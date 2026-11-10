# Images et vidéos à générer avec Higgsfield

Le jeu est prêt à les recevoir. Générez les fichiers, donnez-leur **exactement** les noms ci-dessous et déposez-les dans les dossiers indiqués. Rechargez ensuite la page : ils apparaissent tout seuls.
Tant qu'un fichier manque, le jeu garde ses dessins (emblèmes, nuages, serrure). Vous pouvez donc les ajouter un par un.

## Où chaque média apparaît

| Fichier | Où dans le jeu |
|---|---|
| `images/couverture.jpg` + `videos/couverture.mp4` | En fond de la couverture du passeport (« On embarque ? ») |
| `images/cheznous.jpg` + `videos/cheznous.mp4` | Dans le hublot de l'avion, au décollage vers l'escale 0 |
| `images/escales/<escale>.jpg` + `videos/escales/<escale>.mp4` | En fond de l'en-tête de l'escale, **et** dans le hublot pendant le vol vers cette escale |
| `images/coffre.jpg` + `videos/coffre.mp4` | Au-dessus de la serrure quand le coffre s'ouvre (la vidéo est jouée une fois, sans boucle) |

Noms des escales : `quebec`, `senegal`, `maroc`, `martinique`, `madagascar`, `reunion`.
Exemple : `images/escales/maroc.jpg` et `videos/escales/maroc.mp4`.

La vidéo est prioritaire. Sans vidéo, le jeu affiche l'image, et sans image, il garde son dessin. Si le poste a activé « réduire les animations », le jeu affiche l'image à la place de la vidéo.

## Réglages conseillés (votre forfait Plus)

- **Images** : modèle *Nano Banana Pro*, format **16:9**, résolution 2k. Exportez en JPG de moins de 400 Ko (1600 × 900 px suffisent).
- **Vidéos** : modèle *Seedance 2.0*, image-to-video, en donnant l'image générée comme **start_image**. Durée **5 s**, 720p, **generate_audio : désactivé** (le jeu a ses propres sons et sa musique). Exportez en MP4 de moins de 4 Mo.
- Gardez **le sujet au centre** de l'image : dans le hublot, elle est recadrée en portrait (4:5).
- Pour une boucle sans à-coup, demandez un mouvement de caméra lent et continu. Si possible, donnez aussi l'image de départ comme `end_image`.

## Style commun (à coller au début de chaque prompt image)

> Hand-painted travel-journal illustration, watercolor and ink on warm parchment, soft golden light, gentle grain, muted warm palette with touches of the local colors, wide establishing shot, no text, no letters, no logos, no flags, no recognizable real people, respectful and authentic depiction, educational children's book quality.

Ce style reprend la palette du jeu (parchemin, sépia, or). Il évite le texte, que l'IA écrit mal, ainsi que les drapeaux, qu'elle dessine souvent faux (le jeu les dessine déjà lui-même). Il évite aussi les visages réels, ce qui garantit des images libres de droits et sans clichés.

## Prompts

### Couverture
- **Image** : `[style commun] An old leather passport lying open on a wooden desk, a vintage world map, a small propeller plane, a compass and postcards around it, warm lamp light, cozy adventure mood.`
- **Vidéo** : `Very slow push-in camera, dust particles floating in the warm light, the map pages flutter slightly, seamless loop, calm.`

### Chez nous (décollage)
- **Image** : `[style commun] View from an airplane window at dawn over a runway and a small town, soft pink and gold sky, sense of departure.`
- **Vidéo** : `The plane takes off, the ground slowly drops away, clouds drift past the window, smooth continuous motion.`

### Québec · Élodie, guide à Montréal
- **Image** : `[style commun] A traditional sugar shack (cabane à sucre) in a maple forest at the end of winter, melting snow, steam rising from the chimney, buckets on maple trees, maple taffy on snow.`
- **Vidéo** : `Slow lateral camera move through the maple trees, steam gently rising, snowflakes falling softly, seamless loop.`

### Sénégal · Moussa, pêcheur à Saint-Louis
- **Image** : `[style commun] Colorful painted wooden pirogues returning to the beach of Saint-Louis, Senegal, at golden hour, fishermen silhouettes in the distance, a shared dish of thieboudienne on a mat in the foreground.`
- **Vidéo** : `Pirogues gently rocking on the waves, slow camera drift along the shore, warm evening light, seamless loop.`

### Maroc · Yasmine, guide à Fès
- **Image** : `[style commun] A narrow street of the Fes medina, zellige tiles, lanterns, spice stalls, a silver teapot pouring mint tea into small glasses on a brass tray in the foreground.`
- **Vidéo** : `Slow dolly forward through the medina street, steam rising from the mint tea, lanterns softly swaying, seamless loop.`

### Martinique · le Botaniste des Tropiques
- **Image** : `[style commun] Carnival in a Martinique town street, colorful costumes and feathers seen from afar, hibiscus and tropical plants in the foreground, a pot of colombo, turquoise sea in the background.`
- **Vidéo** : `Hibiscus leaves swaying in the breeze, carnival colors moving in the distance, slow camera pan, festive but gentle, seamless loop.`

> La Martinique a été validée avec la collègue partenaire : son image, sa vidéo et son album sont générés.

### Madagascar · Hery, guide à Antananarivo
- **Image** : `[style commun] Terraced rice fields in the Malagasy highlands, the Avenue of the Baobabs on the horizon at sunset, a zebu cart on a red earth path.`
- **Vidéo** : `Very slow aerial drift over the rice terraces toward the baobabs, sunset light shifting softly, seamless loop. Mora mora: calm and unhurried.`

### La Réunion · le Gardien du Volcan
- **Image** : `[style commun] The Piton de la Fournaise volcano on Réunion Island with a gentle glowing lava flow at dusk, lush green cirques and waterfalls in the foreground, a steaming pot of rougail saucisse.`
- **Vidéo** : `Slow camera rise revealing the volcano, lava glowing softly, mist drifting over the green cirques, seamless loop.`

### Portraits des contacts (images/contacts/)
Un médaillon par escale, dans le même style que les compagnons (`images/guides/`) : en-tête de l'escale, tampon, carte d'embarquement.
Modèle *Nano Banana 2*, format 1:1, avec `images/guides/awa.jpg` en image de référence pour le style. Exportez en JPG 400 × 400.
Fichiers : `elodie.jpg` (Québec), `moussa.jpg` (Sénégal), `yasmine.jpg` (Maroc), `botaniste.jpg` (Martinique), `hery.jpg` (Madagascar), `gardien.jpg` (La Réunion).
Depuis le 10 novembre 2026 : `afi.jpg` (Togo), `jocelyne.jpg` (Sainte-Lucie), `fatima.jpg` (Comores). Ces trois escales ont aussi leur image (`images/escales/`), leur album (`images/album/`), leur musique et leur annonce de l'hôtesse ; leurs vidéos (`videos/escales/togo.mp4`, `saintelucie.mp4`, `comores.mp4`) restent à générer.

### Sons et musiques (audio/)
- **Musique de chaque pays et de la carte** (`audio/musique/<pays>.mp3`, `carte.mp3`) : *ElevenLabs Music v2.5*, instrumental, 150 s, avec des parties qui changent toutes les 25 à 30 secondes pour ne pas lasser.
- **Musique du vol** (`audio/musique/voyage.mp3`) : *ElevenLabs Music v2.5*, 60 s, thème de décollage et de vol au-dessus des nuages.
- **Bruitages** (`audio/sons/decollage.mp3`, `atterrissage.mp3`) : *Seed Audio 1.0*, réacteurs d'un avion de ligne, roulage, « ding-dong » de cabine.
- **Annonces de l'hôtesse** (`audio/hotesse/<pays>.wav`, `coffre.wav`, `fin.wav`) : *Inworld Text to Speech*, voix « Hélène (fr) », la même que l'introduction.

### Coffre (ouverture)
- **Image** : `[style commun] An antique wooden treasure chest with brass fittings and a padlock on top of old maps and stamped passport pages, warm light.`
- **Vidéo** : `The padlock clicks open, the lid slowly lifts and golden light spills out, revealing a small USB key and travel stamps, 5 seconds, no loop.`

## Avant l'usage en classe

- Faites valider chaque image par rapport au contenu de l'escale : plats, lieux, fête. L'IA peut confondre des cultures voisines.
- Si une image montre un cliché ou une erreur, régénérez-la ou supprimez simplement le fichier : le jeu reprend son dessin.
- Les fichiers restent dans le dossier du jeu. Pour la mise en ligne sur Netlify, glissez tout le dossier, `images/` et `videos/` compris.
