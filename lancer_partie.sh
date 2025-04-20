#!/bin/bash

#donne les droit de lancer le bash
#chmod +x lancer_partie.sh


# Lancement du serveur sur le port 1500
gnome-terminal -- bash -c "./sh13_server 1500; exec bash"

# Attente pour que le serveur démarre bien
sleep 1

# Lancement des 4 clients avec IP, ports et noms différents
gnome-terminal -- bash -c "./sh13_client 127.0.0.1 1500 127.0.0.1 1504 Nathalie; exec bash"
gnome-terminal -- bash -c "./sh13_client 127.0.0.1 1500 127.0.0.1 1503 Hadrien; exec bash"
gnome-terminal -- bash -c "./sh13_client 127.0.0.1 1500 127.0.0.1 1502 Fred; exec bash"
gnome-terminal -- bash -c "./sh13_client 127.0.0.1 1500 127.0.0.1 1501 Arthur; exec bash"
