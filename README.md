# 🕵️ Sherlock 13 - Projet Client/Serveur en C avec SDL2

Ce projet est une adaptation du jeu **Sherlock 13** jouable en local par 4 joueurs.  
Il utilise une architecture **client/serveur** en C, avec une interface graphique basée sur **SDL2**.

---

## ⚙️ Dépendances

Le projet utilise les bibliothèques suivantes :

- SDL2
- SDL2_image
- SDL2_ttf
- pthread (POSIX threads)

Pour les installer sous Ubuntu/Debian :

```bash
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```

---

## 🛠️ Compilation

Dans le dossier du projet, utilisez les commandes suivantes :

```bash
gcc sh13.c -o sh13_client -I/usr/include/SDL2 -D_REENTRANT \
    -lSDL2 -lSDL2_image -lSDL2_ttf -lpthread

gcc server.c -o sh13_server -lpthread
```

---

## 🎮 Lancement d'une partie (4 joueurs en local)

Un script est fourni pour lancer le serveur et 4 clients automatiquement :

```bash
./lancer_partie.sh
```

⚠️ Assurez-vous d'avoir `gnome-terminal` ou adaptez le script à votre terminal (`xfce4-terminal`, `xterm`, etc.).

---

## 🧠 Fonctionnement du jeu

- Le **serveur** gère les joueurs, les cartes et les tours.
- Chaque **client** reçoit les infos nécessaires pour interagir via une interface graphique.
- Les joueurs peuvent :
  - Poser une question à **tous les joueurs** : ceux-ci répondent par **"oui" ou "non"**.
  - Poser une question à **un joueur spécifique** : celui-ci répond par la **quantité exacte** (0, 1 ou 2 exemplaires).
  - Voir leur propre grille mise à jour automatiquement.

Les règles de Sherlock 13 sont respectées pour les interactions entre joueurs.

---

## 📁 Structure du projet

```
sh13_etu/
├── sh13.c              # Client graphique SDL
├── server.c            # Serveur de jeu
├── lancer_partie.sh    # Script de lancement automatique
├── README.md
└── .gitignore
```

---

## 👨‍💻 Auteurs

- Arthur — développeur principal
- [Ton Prénom / Collaborateurs à ajouter ici]

---

## 📸 Capture d’écran *(optionnel)*

Ajoutez ici une capture de la fenêtre de jeu avec les grilles et boutons visibles.

---

## 📜 Licence

Projet éducatif — pas de licence officielle.
