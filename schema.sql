-- =====================================================================
-- Le Passeport francophone · Schéma Supabase
-- À coller dans Supabase > SQL Editor > New query, puis « Run ».
-- =====================================================================
-- Principe de sécurité :
--   * la table « parties » n'est accessible à PERSONNE avec la clé publique ;
--   * le jeu ne peut qu'appeler la fonction « enregistrer_partie » (écriture seule) ;
--   * un élève ne peut donc ni lire ni effacer les données des autres équipes ;
--   * l'enseignante lit les données dans le tableau de bord Supabase.
-- =====================================================================

-- 1. Une ligne par partie (= une équipe sur un poste)
create table if not exists public.parties (
  id             uuid primary key,             -- identifiant généré par le navigateur
  classe         text,                         -- facultatif : ?classe=1A dans l'URL
  equipe_nom     text,
  membres        jsonb,
  roles          jsonb,
  debut_jeu      timestamptz,                  -- heure du décollage
  nb_tampons     int     not null default 0,
  coffre_ouvert  boolean not null default false,
  sujet_tire     int,
  escales        jsonb,                        -- réponses, essais, indice, tampon
  carnet         jsonb,                        -- carnet de voyage complet
  etat           jsonb   not null,             -- copie intégrale de l'état du jeu
  cree_le        timestamptz not null default now(),
  maj_le         timestamptz not null default now()
);

alter table public.parties enable row level security;
-- Aucune « policy » : la clé publique (anon) n'a aucun accès direct.
revoke all on public.parties from anon, authenticated;

-- 2. Fonction d'enregistrement (création ou mise à jour)
create or replace function public.enregistrer_partie(p_id uuid, p_etat jsonb)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  if p_id is null or p_etat is null then
    raise exception 'parametres manquants';
  end if;
  if pg_column_size(p_etat) > 200000 then
    raise exception 'etat trop volumineux';
  end if;

  insert into public.parties as p (
    id, classe, equipe_nom, membres, roles, debut_jeu,
    nb_tampons, coffre_ouvert, sujet_tire, escales, carnet, etat
  )
  values (
    p_id,
    left(p_etat->>'classe', 50),
    left(p_etat->'equipe'->>'nom', 100),
    p_etat->'equipe'->'membres',
    p_etat->'equipe'->'roles',
    case when p_etat->>'debutJeu' is null then null
         else to_timestamp((p_etat->>'debutJeu')::numeric / 1000) end,
    (select count(*) from jsonb_each(coalesce(p_etat->'escales', '{}'::jsonb)) e
      where (e.value->>'tamponne')::boolean),
    coalesce((p_etat->>'coffreOuvert')::boolean, false),
    (p_etat->>'sujetTire')::int,
    p_etat->'escales',
    p_etat->'carnet',
    p_etat
  )
  on conflict (id) do update set
    classe        = excluded.classe,
    equipe_nom    = excluded.equipe_nom,
    membres       = excluded.membres,
    roles         = excluded.roles,
    debut_jeu     = excluded.debut_jeu,
    nb_tampons    = excluded.nb_tampons,
    coffre_ouvert = excluded.coffre_ouvert,
    sujet_tire    = excluded.sujet_tire,
    escales       = excluded.escales,
    carnet        = excluded.carnet,
    etat          = excluded.etat,
    maj_le        = now();
end;
$$;

revoke all on function public.enregistrer_partie(uuid, jsonb) from public;
grant execute on function public.enregistrer_partie(uuid, jsonb) to anon;

-- 3. Vue pratique pour la recherche : une ligne par équipe et par escale
--    (Table Editor > suivi_escales > Export to CSV)
create or replace view public.suivi_escales
with (security_invoker = true) as
select
  p.id                                    as partie_id,
  p.classe,
  p.equipe_nom,
  p.debut_jeu,
  e.key                                   as escale,
  coalesce((e.value->>'tamponne')::boolean, false) as tamponne,
  coalesce((e.value->>'indiceVu')::boolean, false) as indice_vu,
  (e.value->'essais'->>0)::int            as essais_q1,
  (e.value->'essais'->>1)::int            as essais_q2,
  (e.value->'essais'->>2)::int            as essais_q3,
  p.carnet->e.key->>'fete'                as fete,
  p.carnet->e.key->>'plat'                as plat,
  p.carnet->e.key->>'pratique'            as pratique,
  p.carnet->e.key->>'mots'                as mots_nouveaux,
  p.carnet->e.key->>'chezMoi'             as chez_moi,
  p.coffre_ouvert,
  p.maj_le
from public.parties p
cross join lateral jsonb_each(coalesce(p.escales, '{}'::jsonb)) e;

revoke all on public.suivi_escales from anon, authenticated;
