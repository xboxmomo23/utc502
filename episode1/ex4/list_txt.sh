#!/bin/bash

# Trouver tous les fichiers .txt dans /home/test et ses sous-répertoires
txt_files=$(find /home/test -type f -name "*.txt")

# Vérifier si des fichiers .txt ont été trouvés
if [ -n "$txt_files" ]; then
    # Afficher les fichiers trouvés
    echo "$txt_files"
else
    # Message si aucun fichier .txt n'est trouvé
    echo "Aucun fichier .txt trouvé"
fi

