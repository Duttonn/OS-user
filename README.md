# Projet OS-USER – Sherlock 13

Ce projet implémente un jeu réseau multijoueur en C basé sur Sherlock 13, avec un client graphique SDL2 et un serveur.

## Prérequis

### macOS
```
brew install sdl2 sdl2_image sdl2_ttf
```

### Linux / WSL
```
sudo apt update
sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```

## Compilation

```
make
```

Cela produit deux exécutables :
- `server` : le serveur du jeu
- `sh13` : le client graphique

## Lancer une partie

Ouvrir 5 terminaux et exécuter les commandes suivantes :

```
./server 1234
./sh13 192.168.1.15 1234 192.168.1.15 4001 joueur1
./sh13 192.168.1.15 1234 192.168.1.15 4002 joueur2
./sh13 192.168.1.15 1234 192.168.1.15 4003 joueur3
./sh13 192.168.1.15 1234 192.168.1.15 4004 joueur4
```

Remplacer `192.168.1.15` par l'adresse IP de votre machine si nécessaire.

## Contenu du dépôt

- `server.c` : code source du serveur
- `sh13.c` : code source du client SDL
- `Makefile`
- `images/` : ressources graphiques
- `sans.ttf` : police utilisée pour l'affichage texte
- `README.md`
- `Rapport _ Projet OS USER.pdf`


