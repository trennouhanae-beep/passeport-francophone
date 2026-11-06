# Le Passeport francophone · Prototype 2

Escape game de FLE (lycée, B1-B2, préparation à la comparaison culturelle de l'AP).
Tout le jeu tient dans **`index.html`** : double-cliquez pour jouer dans Chrome, Edge ou Firefox.

**6 escales, dans l'ordre du passeport :** Québec (2) · Sénégal (9) · **Maroc (5)** · Martinique (4) · Madagascar (7) · La Réunion (1).
**Code du coffre : 2 9 5 4 7 1.**

L'escale du Maroc (Yasmine, guide à Fès) reprend le document et les trois questions du Genially. Le lexique et la question « Et chez toi ? » ont été ajoutés pour cette escale : ils sont à faire valider. Attention : le Genially utilise un autre ordre et un autre code (9 7 4 1 2), et il n'a pas Madagascar.

## D'où vient chaque élément

| Source | Ce qui a été repris |
|---|---|
| **Prototype Word** | Le contenu des 5 escales d'origine : récit (Raoul, le Capitaine), règles, documents, 15 questions, indices, « Et chez toi ? », carnet, mission, sujets, canevas, boîte à outils, corrigé. |
| **Version en ligne** | Architecture de l'application, rôles tirés au sort, chronomètre de 45 min, tampons, coffre, espace enseignante, envoi Supabase (même `schema.sql`, même fonction `enregistrer_partie`). |
| **Genially « Adventure »** | L'escale du Maroc (document et 3 questions). Structure narrative : écran Bienvenue → *Companion Randomizer* (tirage du guide) → transition « arrivée à destination… 00:03 » → épreuve → « le chiffre est… » → coffre. Les images et sons du modèle n'ont pas été repris (destinations sans rapport : banquise, Égypte, Inde…). Les sons sont générés par le navigateur. |

## Ce que le prototype 2 ajoute, et pourquoi

| Ajout | Principe de conception |
|---|---|
| **Escale 0 « Chez nous »** juste après le décollage | Le Word l'annonce (« votre culture est votre première escale ») mais la version en ligne ne l'avait pas. On *part de soi* : on active ce que les élèves savent déjà, et on obtient la seconde moitié de la comparaison finale. |
| **Tirage du guide** (Awa, Léon, Mireille, Teva) | Repris du Genially. Le guide donne l'indice avec sa propre voix : l'aide fait partie du récit. |
| **Transition animée** sur une carte de vol | Repris du Genially. Elle rythme le jeu et situe chaque communauté sur la carte. |
| **Épreuve 2 : lexique** (associer 3 mots à leur définition) | Fait travailler le vocabulaire culturel. Les mots et définitions viennent *uniquement* des documents du Word. Une fois le lexique complet, un bouton reporte les trois mots dans « Trois mots nouveaux » du carnet. |
| **Écouter le document** (synthèse vocale, voix québécoise si le poste en a une) | Ajoute la compréhension orale (« Écoutez l'histoire de mon île »). Le paragraphe en cours de lecture est surligné. |
| **Fiche de préparation** dans la mission | Affiche côte à côte les notes du carnet pour l'escale choisie et la réponse « Chez nous » qui correspond au sujet. Trois champs à remplir : ressemblance, différence, explication. Les connecteurs de la boîte à outils s'insèrent d'un clic. |
| **Minuteur et canevas** | Pendant les 2 minutes, la partie du canevas en cours (intro 15 s, etc.) est surlignée. |
| **Auto-évaluation** (6 critères) | Après avoir écouté l'enregistrement, l'équipe coche ce qui est réussi. Ce retour est pensé pour aider à progresser, pas pour noter. |
| **Suivi enrichi** | Erreurs au lexique, nombre d'écoutes, réponses « Chez nous », préparation et auto-évaluation, dans l'espace enseignante et dans Supabase (colonne `etat`). |

Un tampon d'escale demande : les 3 bonnes réponses au quiz, le lexique complet, et une réponse à « Et chez toi ? ». Un essai faux n'est pas pénalisé : le paragraphe à relire est surligné, et on réessaie.

## Mise en ligne et données

Ce qui ne change pas par rapport à la version en ligne :
- Pour donner un lien aux élèves : glissez le dossier sur https://app.netlify.com/drop. Ajoutez `?classe=AP-1A` à l'adresse pour reconnaître chaque classe.
- Pour recevoir les données : dans Supabase, exécutez `schema.sql`, puis remplissez `SUPABASE_URL` et `SUPABASE_CLE` (la clé publique, jamais la clé secrète) dans `REGLAGES`, en haut du script de `index.html`.
- Espace enseignante : lien en bas de page. Le code par défaut est `prof2026` : **changez-le** dans `REGLAGES`.
- Entre deux groupes : espace enseignante > Réinitialiser la partie.
- La sauvegarde de cette version porte un nouveau nom (`passeport-francophone-v3`). Une partie commencée avec l'ancienne version ne sera donc pas reprise.

## Avant l'usage en classe

- Faites valider les contenus culturels, et en particulier le **lexique**, qui est nouveau, ainsi que l'escale du **Maroc**. La Martinique est à revoir avec la collègue partenaire.
- Remplacez les documents de travail par des documents authentiques.
- La synthèse vocale dépend des voix installées sur le poste. S'il n'y a aucune voix française, le bouton « Écouter » lit avec une autre voix. Testez sur les postes de la classe.
- Pour modifier le contenu : tout est dans la partie `CONTENU PÉDAGOGIQUE` du script (`ESCALES`, `GUIDES`, `CHEZ_NOUS`, `SUJETS`, `CANEVAS`, `OUTILS`, `AUTO_EVAL`).
