#!/bin/bash

# Vérifier si un argument est fourni
if [ -z "$1" ]; then
    echo "Usage: $0 <nom_du_fichier>"
    exit 1
fi

# Vérifier si le fichier existe
if [ ! -e "$1" ]; then
    echo "Le fichier '$1' n'existe pas."
    exit 1
fi

# Obtenir les permissions du fichier
permissions=$(stat -c "%A" "$1")

# Afficher les permissions
echo "Permissions: $permissions"

# Vérifier si l'utilisateur a les droits d'exécution
if [ -x "$1" ]; then
    echo "Vous avez les droits d'exécution sur ce fichier."
else
    echo "Vous n'avez pas les droits d'exécution sur ce fichier."
fi
