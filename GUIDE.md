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
| **Un vrai passeport** | Couverture en cuir bordeaux avec couture et dorure à chaud, qui s'ouvre au moment d'embarquer. Chaque écran est ensuite une page numérotée du livret : papier de sécurité guilloché, filigrane du globe, reliure cousue, titre courant (« Visa · Maroc ») et folio. Les pages tournent vers l'avant ou vers l'arrière selon le chemin. L'écran de l'équipage est une page d'identité (numéro, voyageurs, hologramme, lignes MRZ) qui se remplit en direct. |
| **Drapeaux en empreinte de tampon** | Chaque tampon d'escale porte le drapeau du pays, imprimé comme une empreinte d'encre un peu effacée, avec le chiffre du code par-dessus. On le retrouve sur la récompense de fin d'escale, sur les pages du passeport et au bilan. Québec : le fleurdelisé. **Martinique (rouge-vert-noir) et La Réunion (Lo Mahavéli) : ce sont des drapeaux d'identité régionale, car le drapeau officiel de ces deux territoires est le drapeau français. À valider.** |
| **Album photo de chaque pays** | Pendant le vol, un album de 4 polaroïds légendés s'ouvre avant l'atterrissage. Les légendes reprennent uniquement le contenu des documents de l'escale : c'est une mise en bouche à lire à voix haute. Les photos sont dans `images/album/` et la liste dans `ALBUMS`. L'album de la Martinique montre des croquis, en attendant la validation de l'escale. |
| **Enregistrement de l'exposé** | Le bouton « Démarrer l'enregistrement » utilise le micro de l'ordinateur et lance le minuteur de présentation. L'équipe réécoute l'exposé dans le jeu, puis peut télécharger le fichier audio. Le son reste sur le poste et n'est envoyé nulle part. Si `LIEN_DEPOT` est rempli dans `REGLAGES`, un bouton « Déposer l'enregistrement » ouvre cette adresse (Drive, Padlet, Moodle…). |
| **Auto-évaluation** (6 critères) | Après avoir écouté l'enregistrement, l'équipe coche ce qui est réussi. Ce retour est pensé pour aider à progresser, pas pour noter. |
| **Parcours en écrans successifs** | Briefing de la Capitaine → Étape 1 l'équipage → Étape 2 le guide → Décoller. Après chaque tampon, on revient à la carte, qui sert de point de passage central. L'avion part de la dernière escale visitée. Le coffre reste bloqué tant que les 6 tampons ne sont pas obtenus. |
| **Fin / Bilan** | Après l'auto-évaluation, « Terminer le voyage » arrête le chronomètre et affiche les tampons, le temps, les réussites du premier coup, les indices utilisés, les essais au coffre, le sujet, et les critères à travailler la prochaine fois. |
| **Musique d'ambiance** (bouton « ♪ Musique », désactivée par défaut) | Un thème généré par le navigateur pour chaque escale. Il évoque la musique locale par sa gamme, son rythme et ses instruments : violon et tapement de pieds au Québec, kora et djembé au Sénégal, oud et darbouka au Maroc, esprit biguine en Martinique, valiha à Madagascar, kayamb et roulèr à La Réunion. La musique baisse pendant la lecture à voix haute et se tait pendant la mission, pour laisser place à l'exposé et à son enregistrement. |
| **Animations et bruitages** | Entrée des écrans, hublot de l'avion pendant le vol, escales à visiter qui clignotent sur la carte, tampon encré, confettis aux couleurs du drapeau, serrure qui se déverrouille, fanfare au bilan. Tout est coupé si le poste demande moins d'animations. |
| **Images et vidéos Higgsfield** (facultatives) | Le jeu affiche les fichiers déposés dans `images/` et `videos/`, et garde ses dessins s'ils manquent. Les noms de fichiers et les prompts sont dans `MEDIAS-HIGGSFIELD.md`. |
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
