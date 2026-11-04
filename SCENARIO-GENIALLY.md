# Le Passeport francophone · Scénario de transposition vers Genially

Ce document sert à monter le jeu dans Genially, à partir de votre modèle « Adventure ». Il suit les diapositives dans l'ordre. **Tous les textes sont prêts à copier-coller** : ils sont identiques à ceux du jeu HTML.

- **Escales** (ordre du passeport) : Québec · Sénégal · Maroc · Martinique · Madagascar · La Réunion
- **Code du coffre : 2 9 5 4 7 1**
- **Durée** : 45 min de jeu, puis l'exposé (4 min de préparation, 2 min de présentation)

---

## 1. Les choix de conception (à lire avant de commencer)

| Problème dans le Genially actuel | Solution retenue |
|---|---|
| La carte permet de choisir une escale, mais « Destination suivante » enchaîne les diapos dans l'ordre : une équipe qui commence par la Martinique saute le Sénégal et le Maroc. | **Parcours guidé par la carte.** Il y a une carte par étape. Sur chaque carte, seul l'avion de la prochaine escale est cliquable, et les escales déjà faites portent une croix rouge. L'ordre de jeu reste celui du code. |
| On peut répondre au hasard sans lire le document. | Le **document s'affiche en premier**, sur la diapo d'accueil de l'escale, et le bouton « Commencer » est placé en bas du texte. |
| Une erreur affiche seulement un GIF. | **Une fenêtre d'erreur par question**, qui dit quel paragraphe relire. |
| L'indice est écrit dans le document, donc toujours visible. | Un **bouton « Indice »** séparé, qui ouvre une fenêtre : le guide parle. |
| Les compagnons du modèle (Morgana, Indiana Jane…) sont en anglais et ne servent à rien. | **Quatre guides francophones** tirés au sort. Ils réapparaissent dans les fenêtres d'indice. |
| Le jeu s'arrête sur « Congratulations! ». | Il continue vers la **dernière mission** : l'exposé de comparaison culturelle. |

**Ce que Genially ne fait pas bien, et comment s'en passer**

- **Réponses écrites** (« Et chez toi ? », carnet) : Genially ne les enregistre pas. Utilisez un **carnet de voyage papier**, à imprimer depuis la section 6 : le secrétaire y écrit à chaque escale.
- **Lexique (associer un mot à sa définition)** : si votre version de Genially propose l'activité « Relier » ou « Glisser-déposer », utilisez-la. Sinon, faites-en **un 4e quiz** : « Que signifie… ? » (voir chaque escale).
- **Rôles** : tirez-les au sort à l'oral ou sur papier. Le Genially garde le tirage du guide.

---

## 2. La charte couleurs (« passeport »)

À appliquer dans **Couleurs du document** (ou **Apparence**), puis sur les éléments qui ne suivent pas la palette.

| Rôle | Code | Remplace (modèle Adventure) |
|---|---|---|
Palette **chaude**, comme un passeport en cuir :

| Rôle | Code | Remplace (modèle Adventure) |
|---|---|---|
| Principal : titres, boutons, avions, barres | `#4A2417` cuir brun | `#3E2D4B` violet aubergine |
| Fond : diapos, cadres | `#F7EFE2` papier crème | `#F7ECD7` beige rosé |
| Accent : « Commencer », chiffres gagnés, coffre | `#C07A1C` or cuivré | — |
| Erreur, escale visitée (croix) | `#B3261E` rouge tampon | — |
| Texte courant | `#2B1A12` encre brune | `#121212` |

**Couleurs de chaque escale, d'après son drapeau.** La couleur principale sert au titre et au tampon. Les trois couleurs du drapeau forment une bande en haut de la diapo d'accueil.

| Escale | Couleur principale | Bande du drapeau (gauche → droite) |
|---|---|---|
| Québec (fleurdelisé) | `#0B4EA2` bleu | `#0B4EA2` · `#FFFFFF` · `#0B4EA2` |
| Sénégal | `#00853F` vert | `#00853F` · `#FDEF42` · `#E31B23` |
| Maroc | `#C1272D` rouge | `#C1272D` · `#006233` · `#C1272D` |
| Martinique (drapeau rouge-vert-noir) | `#1E1E1E` noir | `#E4002B` · `#00A651` · `#1E1E1E` |
| Madagascar | `#E2352B` rouge | `#FFFFFF` · `#FC3D32` · `#007E3A` |
| La Réunion (« Lo Mahavéli ») | `#B06F00` or volcan | `#003F87` · `#FFD100` · `#E4002B` |

À valider : la Martinique et La Réunion ont un drapeau officiel français. Les couleurs ci-dessus viennent des drapeaux régionaux les plus utilisés (rouge-vert-noir et « Lo Mahavéli »).

Règles de lisibilité : texte foncé sur fond clair, jamais de texte fin en or sur le parchemin, et le rouge réservé aux erreurs et aux croix.

---

## 3. Le plan général

```
1  Couverture
2  Bienvenue (consigne + chronomètre 45 min)
3  Message du Capitaine + règles
4  Tirage du guide            → 4 fenêtres (un guide chacune)
5  Escale 0 · Chez nous
6  Carte 0 (seul Québec cliquable)
   ┌ pour chaque escale (×6) ──────────────────────────────┐
   │ Transition « Arrivée à… 00:03 »                        │
   │ Accueil du contact + document + bouton Indice          │
   │ Quiz 1 · Quiz 2 · Quiz 3 · (Quiz 4 lexique)            │
   │ Bravo + chiffre + tampon                               │
   │ Carte n (croix sur les escales faites, prochaine active)│
   └────────────────────────────────────────────────────────┘
   Coffre (code 295471)
   Coffre ouvert (fin de l'histoire)
   Dernière mission : sujets · canevas · boîte à outils · minuteurs
   Auto-évaluation
Fenêtres (popups) : 4 guides, 6 indices, 18 à 24 erreurs
```

Pour aller vite, **montez une escale complète** (le Québec), puis **dupliquez son bloc de diapos** cinq fois et changez les textes.

---

## 4. Les diapositives, une par une

### Diapo 1 · Couverture
- Titre : **PASSEPORT FRANCOPHONE**
- Sous-titre : *Québec · Sénégal · Maroc · Martinique · Madagascar · La Réunion*
- Bouton : **ON EMBARQUE ?** → diapo suivante

### Diapo 2 · Bienvenue
- Titre : **B I E N V E N U E !**
- Texte :
  > Attachez vos ceintures : le Passeport francophone est verrouillé, et l'avion décolle dans 45 minutes.
  > Avant de partir, présentez-vous : votre culture est votre première escale. Ensuite, à chaque destination, lisez le document, discutez en équipe et répondez aux questions pour gagner un chiffre.
  > Une erreur ? Pas de panique : le jeu vous dit pourquoi, et un indice vous attend. Réunissez les six chiffres pour ouvrir le coffre… et préparer votre dernière mission !
- Widget **Chronomètre** : mode compte à rebours **45:00** (s'il n'y a pas de compte à rebours, gardez le chronomètre normal et dites « on s'arrête à 45 minutes »). À afficher sur toutes les diapos de jeu.
- Bouton : **SUIVANT**

### Diapo 3 · Message du Capitaine (cockpit, Paris)
> Raoul, l'agent chargé du Passeport francophone, a disparu. Avant de partir, il a verrouillé le coffre qui contient la clé de son enquête. Pour l'ouvrir, il faut un code à 6 chiffres.
> Chaque chiffre est gardé par un contact, dans une communauté francophone : au Québec, au Sénégal, au Maroc, en Martinique, à Madagascar et à La Réunion. Pour l'obtenir, lisez le document de chaque escale et répondez à ses questions. Notez aussi ce que vous découvrez dans votre carnet de voyage : il vous servira pour votre dernière mission.
> L'avion décolle dans 45 minutes. Embarquez !

**Règles du voyage** :
1. Jouez en équipe de 3 ou 4, avec un rôle chacun : lecteur, navigateur, gardien du temps, secrétaire.
2. Le français est la seule langue du passeport.
3. Lisez le document, discutez, puis répondez ensemble.
4. Une réponse fausse ? Relisez et réessayez : il n'y a aucune pénalité.
5. Vous avez droit à un indice par escale : votre guide vous le donne.
6. Avant de quitter une escale, répondez à la question « Et chez toi ? » dans le carnet.

### Diapo 4 · Tirage du guide
Gardez le **Companion Randomizer** du modèle. Remplacez les 4 fenêtres :

| Fenêtre | Nom | Texte |
|---|---|---|
| 1 | **Aminata, la cartographe** | « Un bon voyageur lit la carte… et le texte, paragraphe par paragraphe. » |
| 2 | **Léon, le reporter** | « Qui ? Quoi ? Quand ? Un journaliste cherche toujours les mots-clés. » |
| 3 | **Mireille, la conteuse** | « Chaque histoire a un début, un milieu et une fin : écoutez-la bien. » |
| 4 | **Tahina, l'explorateur** | « Prenez votre temps, observez, et la piste apparaîtra. » |

Bouton de chaque fenêtre : **C'EST PARTI !** → diapo suivante. Remplacez les photos du modèle par des illustrations ou des initiales dans un cercle.

### Diapo 5 · Escale 0 · Chez nous
- Titre : **Chez nous**. Sous-titre : *« Votre culture est votre première escale. »*
- Consigne : *Discutez en équipe. Le secrétaire écrit les réponses dans le carnet de voyage, en français.*
  1. Une fête ou un moment de l'année qui rassemble les gens chez vous
  2. Un plat important pour votre communauté, et quand on le mange
  3. Comment on accueille un invité chez vous
  4. La place de la famille, des grands-parents ou des ancêtres
- Bouton : **DÉCOLLER** → Carte 0

### Diapos « Carte » (une par étape, 7 en tout)
Reprenez votre diapo **« Choisis ta destination »**, puis dupliquez-la.
- **6 avions** : Québec, Sénégal, Maroc, Martinique, Madagascar, La Réunion, plus Paris (point de départ).
- **Carte 0** : aucune croix ; seul l'avion du **Québec** a une interaction (→ transition Québec).
- **Carte 1** : croix rouge sur le Québec ; seul le **Sénégal** est cliquable.
- **Carte 2** : croix sur Québec et Sénégal ; seul le **Maroc** est cliquable. Et ainsi de suite.
- **Carte 6** : toutes les croix ; un bouton **OUVRIR LE COFFRE**.
- Astuce : ajoutez sur les avions déjà faits l'info-bulle « Escale visitée : chiffre N ».

---

## 5. Les six escales

Structure identique pour chacune :

| Diapo | Contenu | Interactions |
|---|---|---|
| **Transition** | « ARRIVÉE À… » + phrase d'ambiance + compte à rebours 00:03 | passage auto → Accueil |
| **Accueil** | Titre, contact, citation, **document en 3 paragraphes numérotés (§1, §2, §3)** | bouton **INDICE** → fenêtre indice ; bouton **COMMENCER** (en bas) → Quiz 1 |
| **Quiz 1 à 3** | Activité **Quiz**, 3 réponses, ordre aléatoire | Bonne → diapo suivante ; Mauvaise → fenêtre d'erreur de la question |
| **Quiz 4 (lexique)** | Activité « Relier » ou quiz « Que signifie… ? » | idem |
| **Bravo** | « BRAVO ! Le chiffre de l'escale N : X » + tampon + « Et chez toi ? » | bouton **CARTE** → carte suivante |

**Fenêtre d'erreur** (modèle unique, à dupliquer) : GIF ou icône + texte *« Ce n'est pas encore ça. Relisez le paragraphe N, puis réessayez. »* + bouton **RÉESSAYER** (fermer la fenêtre).

**Fenêtre d'indice** : pastille du guide + *« Votre guide vous souffle : … »* + l'indice + bouton **FERMER**.

---

### Escale 1 · Québec (Canada) · chiffre **2**
- **Transition** : ARRIVÉE AU QUÉBEC… *La neige fond, les érables coulent, et une odeur de sirop flotte dans l'air…*
- **Contact** : Élodie, guide à Montréal
- **Citation** : « Bienvenue ! Ici, on parle français depuis plus de quatre siècles. Lisez bien : mon chiffre se mérite. »
- **Document**
  - §1 Au Québec, le français est la langue officielle de la province, alors que le Canada a deux langues officielles : le français et l'anglais.
  - §2 Au printemps, quand la neige fond, c'est le « temps des sucres » : on récolte la sève des érables pour fabriquer le sirop d'érable. Les familles et les amis se retrouvent alors à la cabane à sucre pour partager un repas copieux, avec des œufs, des fèves au lard et de la tire d'érable versée sur la neige.
  - §3 En hiver, le Carnaval de Québec anime la ville avec son personnage célèbre, Bonhomme. Le 24 juin, la Fête nationale du Québec réunit les Québécois autour de feux, de spectacles et de chansons.
- **Indice** : Les réponses se trouvent dans les deuxième et troisième paragraphes.

| Quiz | Question | ✓ Bonne réponse | Mauvaises | Erreur : relire |
|---|---|---|---|---|
| 1 | Quand va-t-on à la cabane à sucre ? | Au printemps | En hiver · En été | §2 |
| 2 | Qu'est-ce que le « temps des sucres » ? | La récolte de la sève des érables | La fête nationale · Un dessert au sirop | §2 |
| 3 | Que célèbre-t-on le 24 juin ? | La Fête nationale du Québec | Le Carnaval de Québec · La fin de l'hiver | §3 |

- **Lexique** : la cabane à sucre → *le lieu où l'on partage un repas copieux au temps des sucres* · la tire d'érable → *du sirop d'érable versé sur la neige* · Bonhomme → *le personnage célèbre du Carnaval de Québec*
- **Et chez toi ?** Quelle fête ou quel moment de l'année rassemble ta famille autour d'un repas ?

### Escale 2 · Sénégal (Afrique de l'Ouest) · chiffre **9**
- **Transition** : ARRIVÉE AU SÉNÉGAL… *Les pirogues colorées rentrent au port de Saint-Louis, et quelqu'un vous fait signe de venir manger…*
- **Contact** : Moussa, pêcheur à Saint-Louis
- **Citation** : « Nanga def ? Chez nous, l'invité est roi. Comprenez ce mot wolof et je vous donne mon chiffre. »
- **Document**
  - §1 Au Sénégal, le français est la langue officielle, mais le wolof est la langue la plus parlée au quotidien, à côté du pulaar, du sérère, du diola et d'autres langues nationales.
  - §2 Les Sénégalais sont fiers de la teranga, un mot wolof qui désigne l'hospitalité : on accueille l'invité, on partage le repas avec lui et on lui offre le meilleur. Le plat national est le thiéboudiène, du riz cuit avec du poisson et des légumes, souvent mangé autour d'un grand plat commun.
  - §3 La Tabaski, nom donné à l'Aïd el-Kébir, est l'une des fêtes les plus importantes : les familles se réunissent, portent de nouveaux habits et partagent la viande du mouton.
- **Indice** : Cherchez dans le deuxième paragraphe, puis dans le dernier.

| Quiz | Question | ✓ Bonne réponse | Mauvaises | Erreur : relire |
|---|---|---|---|---|
| 1 | Que signifie le mot « teranga » ? | L'hospitalité | La fête · La pêche | §2 |
| 2 | Comment mange-t-on souvent le thiéboudiène ? | Autour d'un grand plat commun | Seul, à table · Debout, dans la rue | §2 |
| 3 | À quelle fête correspond la Tabaski ? | L'Aïd el-Kébir | La fête de l'indépendance · Le Nouvel An | §3 |

- **Lexique** : le wolof → *la langue la plus parlée au quotidien* · le thiéboudiène → *du riz cuit avec du poisson et des légumes* · la teranga → *l'hospitalité : on offre le meilleur à l'invité*
- **Et chez toi ?** Comment accueille-t-on un invité dans ta communauté ? Que lui sert-on ?

### Escale 3 · Maroc (Afrique du Nord) · chiffre **5**
- **Transition** : ARRIVÉE AU MAROC… *Les ruelles de la médina sentent les épices et la menthe fraîche. Quelqu'un vous fait signe d'entrer…*
- **Contact** : Yasmine, guide à Fès
- **Citation** : « Marhaba ! Asseyez-vous, le thé est prêt. Lisez bien mon histoire, et mon chiffre sera à vous. »
- **Document**
  - §1 Au Maroc, les langues officielles sont l'arabe et l'amazighe, la langue des Berbères. Au quotidien, la plupart des Marocains parlent la darija, l'arabe marocain. Le français n'est pas une langue officielle, mais il est très présent à l'école, dans les affaires et dans les médias.
  - §2 On accueille l'invité avec un thé à la menthe, servi très sucré dans de petits verres. Le vendredi, les familles se réunissent souvent autour d'un grand plat de couscous partagé.
  - §3 Dans la médina, la vieille ville, les souks sont des marchés où l'on trouve des épices, des tapis et des babouches. Le tajine, un plat mijoté dans un récipient en terre au couvercle pointu, porte le nom de ce récipient.
- **Indice** : La langue est dans le premier paragraphe, l'accueil et le couscous dans le deuxième.

| Quiz | Question | ✓ Bonne réponse | Mauvaises | Erreur : relire |
|---|---|---|---|---|
| 1 | Quelles sont les langues officielles du Maroc ? | L'arabe et l'amazighe | L'arabe et le français · La darija et le français | §1 |
| 2 | Que sert-on à l'invité pour l'accueillir ? | Un thé à la menthe | Un jus d'orange · Un café au lait | §2 |
| 3 | Quel jour mange-t-on souvent le couscous en famille ? | Le vendredi | Le lundi · Le samedi | §2 |

- **Lexique** : la darija → *l'arabe marocain, parlé au quotidien* · les souks → *des marchés de la médina : épices, tapis, babouches* · le tajine → *un plat mijoté dans un récipient en terre au couvercle pointu*
- **Et chez toi ?** Quel lieu de ta ville ou de ta région est important pour faire les courses ou se retrouver ?

### Escale 4 · Martinique (Caraïbes) · chiffre **4**
- **Transition** : ARRIVÉE EN MARTINIQUE… *Des tambours au loin, des costumes partout dans les rues : le carnaval commence…*
- **Contact** : Le Botaniste des Tropiques
- **Citation** : « Entre deux fleurs d'hibiscus, je garde un chiffre. Suivez-moi au carnaval ! »
- **Document**
  - §1 En Martinique, île française des Caraïbes, on parle le français et le créole martiniquais. La culture martiniquaise est née du métissage d'héritages africains, européens, indiens et caribéens.
  - §2 Le carnaval est la grande fête de l'année : pendant plusieurs jours, les rues s'animent de défilés, de costumes et de musique. Le mercredi des Cendres, on brûle Vaval, le roi du carnaval, et les participants s'habillent en noir et blanc.
  - §3 En cuisine, le colombo, un plat épicé venu de l'héritage indien, et les accras, de petits beignets, sont très appréciés. Le madras, un tissu à carreaux colorés, fait partie du costume traditionnel.
- **Indice** : Le carnaval est dans le deuxième paragraphe, la cuisine et le costume dans le troisième.

| Quiz | Question | ✓ Bonne réponse | Mauvaises | Erreur : relire |
|---|---|---|---|---|
| 1 | Que fait-on le mercredi des Cendres ? | On brûle Vaval | On mange des accras · On plante des fleurs | §2 |
| 2 | D'où vient le colombo ? | De l'héritage indien | De la cuisine française · De la cuisine caribéenne | §3 |
| 3 | Qu'est-ce que le madras ? | Un tissu à carreaux colorés | Une danse · Un plat épicé | §3 |

- **Lexique** : Vaval → *le roi du carnaval, brûlé le mercredi des Cendres* · les accras → *de petits beignets* · le créole martiniquais → *la langue parlée avec le français sur l'île*
- **Et chez toi ?** Quelle fête de ta communauté se vit dans la rue, avec de la musique et des costumes ?

### Escale 5 · Madagascar (Océan Indien) · chiffre **7**
- **Transition** : ARRIVÉE À MADAGASCAR… *Des rizières en terrasses, des baobabs à l'horizon… ici, rien ne presse.*
- **Contact** : Hery, guide à Antananarivo
- **Citation** : « Mora mora… Prenez votre temps, lisez doucement, et le chiffre viendra. »
- **Document**
  - §1 Madagascar est une grande île de l'océan Indien. Les langues officielles sont le malgache et le français. L'expression « mora mora », qui signifie « doucement, doucement », résume une manière de vivre : on prend le temps.
  - §2 La famille et le respect des ancêtres occupent une place centrale. Sur les Hautes Terres, le famadihana, ou « retournement des morts », est une cérémonie familiale : on ouvre le tombeau des ancêtres, on change leur linceul, puis on danse et on partage un repas.
  - §3 Le riz est au cœur de chaque repas. Le romazava, un bouillon de viande et de brèdes (des feuilles vertes), est souvent présenté comme le plat national.
- **Indice** : Chaque réponse se trouve dans un paragraphe différent, dans l'ordre.

| Quiz | Question | ✓ Bonne réponse | Mauvaises | Erreur : relire |
|---|---|---|---|---|
| 1 | Que signifie « mora mora » ? | Doucement, doucement | Bonjour à tous · Merci beaucoup | §1 |
| 2 | Qu'est-ce que le famadihana ? | Une cérémonie familiale en l'honneur des ancêtres | Un marché du dimanche · Une danse de mariage | §2 |
| 3 | Quel aliment est au cœur de chaque repas ? | Le riz | Le pain · La semoule | §3 |

- **Lexique** : le romazava → *un bouillon de viande et de brèdes* · les brèdes → *des feuilles vertes* · le malgache → *une langue officielle, avec le français*
- **Et chez toi ?** Quelle place les grands-parents et les ancêtres occupent-ils dans ta communauté ?

### Escale 6 · La Réunion (Océan Indien) · chiffre **1**
- **Transition** : ARRIVÉE À LA RÉUNION… *Le sol tremble un peu sous vos pieds : le Piton de la Fournaise veille sur l'île…*
- **Contact** : Le Gardien du Volcan
- **Citation** : « Du haut du Piton de la Fournaise, je surveille le dernier chiffre. Écoutez l'histoire de mon île. »
- **Document** (idéalement avec un **audio** lu à voix haute : Genially > Insérer > Audio)
  - §1 La Réunion est une île française de l'océan Indien, connue pour son volcan, le Piton de la Fournaise. On y parle le français et le créole réunionnais. La société réunionnaise réunit des populations d'origine africaine, malgache, européenne, indienne et chinoise.
  - §2 Le 20 décembre, on célèbre la fête de l'abolition de l'esclavage, la « Fèt Kaf », avec des concerts et des défilés. Le maloya, une musique et une danse héritées des esclaves, est inscrit au patrimoine culturel immatériel de l'UNESCO.
  - §3 Le plat le plus courant est le cari : de la viande ou du poisson cuits avec des épices, servis avec du riz et des grains, comme des haricots ou des lentilles.
- **Indice** : La fête et la musique sont dans le deuxième paragraphe, le cari dans le dernier.

| Quiz | Question | ✓ Bonne réponse | Mauvaises | Erreur : relire |
|---|---|---|---|---|
| 1 | Que célèbre-t-on le 20 décembre ? | L'abolition de l'esclavage | La fête du volcan · Le Nouvel An créole | §2 |
| 2 | Qu'est-ce que le maloya ? | Une musique et une danse | Un plat épicé · Un sommet du volcan | §2 |
| 3 | Avec quoi sert-on le cari ? | Avec du riz et des grains | Avec du pain · Avec des frites | §3 |

- **Lexique** : le Piton de la Fournaise → *le volcan de l'île* · la Fèt Kaf → *la fête de l'abolition de l'esclavage, le 20 décembre* · le cari → *de la viande ou du poisson cuits avec des épices*
- **Et chez toi ?** Quelle musique traditionnelle de ta communauté raconte son histoire ?

---

## 6. La fin du jeu

### Diapo · Le coffre
- Widget **Code secret** (celui du modèle) :
  - Message : *Entrez les six chiffres dans l'ordre des escales du passeport.*
  - Champ : *Code à 6 chiffres*
  - **Code correct : 295471**
  - Si juste → feux d'artifice + diapo suivante
  - Si faux → son d'erreur. Ajoutez sous le widget : *« Vérifiez l'ordre : Québec, Sénégal, Maroc, Martinique, Madagascar, La Réunion. »*

### Diapo · Le coffre est ouvert
> À l'intérieur, une clé USB. Grâce aux informations qu'elle contient, la police retrouve Raoul, sain et sauf, à l'aéroport de Dakar. Il vous remercie : « Vous avez voyagé dans six communautés francophones. Il vous reste une dernière mission : raconter ce que vous avez découvert, et le comparer avec votre propre communauté. »

Bouton : **DÉCOUVRIR LA DERNIÈRE MISSION**

### Diapo · Dernière mission : l'exposé
> Vous allez faire un exposé oral. Vous aurez 4 minutes pour le préparer et 2 minutes pour le présenter. Comparez votre propre communauté avec une communauté francophone découverte pendant le voyage, ou avec celle de votre partenaire. Montrez votre compréhension de ses réalités culturelles et organisez clairement votre exposé.

**Sujets** (au choix ou tirés au sort : réutilisez le *Randomizer* de la diapo 4 avec 4 fenêtres) :
1. Quelles traditions ou fêtes rassemblent les gens dans une communauté francophone découverte pendant le voyage et dans la vôtre ?
2. Quel rôle la gastronomie joue-t-elle dans l'identité d'une communauté francophone découverte pendant le voyage et de la vôtre ?
3. Comment accueille-t-on un invité dans une communauté francophone découverte pendant le voyage et dans la vôtre ?
4. Quelle place la famille et les ancêtres occupent-ils dans une communauté francophone découverte pendant le voyage et dans la vôtre ?

### Diapo · Canevas et boîte à outils
| Partie | Durée | Contenu |
|---|---|---|
| Introduction | 15 s | Le sujet et les deux communautés comparées |
| La communauté francophone | 35 s | Une pratique précise découverte pendant le voyage |
| Ma communauté | 35 s | Une pratique comparable |
| Comparaison | 25 s | Une ressemblance, une différence, et ce qui les explique |
| Conclusion | 10 s | Ce que cette comparaison m'a appris |

**Boîte à outils** : comme… · de même que… · tout comme… · alors que… · tandis que… · contrairement à… · à la différence de… · plus / moins / aussi… que… · en revanche… · cela s'explique par… · ce qui m'a surpris(e), c'est que…

Deux widgets **Chronomètre** : « Préparation 4:00 » et « Présentation 2:00 ». Ajoutez : *Enregistrez votre exposé avec un téléphone pendant les 2 minutes.*

### Diapo · Auto-évaluation
Après l'exposé, écoutez l'enregistrement et cochez ce qui est réussi :
- J'ai présenté le sujet et les deux communautés dans l'introduction.
- J'ai décrit une pratique précise de la communauté francophone.
- J'ai décrit une pratique comparable de ma communauté.
- J'ai donné une ressemblance ET une différence, avec une explication.
- J'ai utilisé au moins trois expressions de la boîte à outils.
- J'ai tenu dans les 2 minutes et j'ai conclu.

---

## 7. Le carnet de voyage (à imprimer, une page par équipe)

| Escale | Une fête ou une tradition | Un plat ou une habitude alimentaire | Un lieu ou une pratique quotidienne | Trois mots nouveaux | Et chez moi ? |
|---|---|---|---|---|---|
| Chez nous | | | | | |
| Québec | | | | | |
| Sénégal | | | | | |
| Maroc | | | | | |
| Martinique | | | | | |
| Madagascar | | | | | |
| La Réunion | | | | | |

Préparation de l'exposé : **Sujet** … · **Communauté comparée** … · **Ressemblance** … · **Différence** … · **Explication** …

---

## 8. Liste de contrôle avant la classe

- [ ] Plus aucun texte en anglais (START, Let's go, Companion Randomizer, Congratulations…)
- [ ] Plus d'escale Vietnam ni Canada. Le Québec est bien nommé « Québec ».
- [ ] Les doublons du modèle sont supprimés : l'ancienne diapo 6 doublait la 5, et la 8 était vide.
- [ ] Chaque mauvaise réponse ouvre la bonne fenêtre d'erreur (le bon paragraphe).
- [ ] Les cartes 0 à 6 n'ont qu'un seul avion cliquable chacune.
- [ ] Le code du coffre est **295471**, et il est testé.
- [ ] Les sons ne démarrent pas tous seuls sur chaque diapo (sinon la classe devient vite bruyante).
- [ ] Les photos et GIF du modèle sont remplacés par des images libres de droits, liées aux pays.
- [ ] Les contenus culturels sont validés, en particulier le Maroc, la Martinique et les lexiques.
- [ ] Le jeu a été testé une fois en entier, en mode présentation.
