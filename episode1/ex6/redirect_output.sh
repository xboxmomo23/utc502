#!/bin/bash

# Vérifier si une commande est fournie en argument
if [ -z "$1" ]; then
    echo "Usage: $0 <commande>"
    exit 1
fi

# Exécuter la commande donnée en argument
# Rediriger la sortie standard vers output.log et la sortie d'erreur vers error.log
eval "$1" > output.log 2> error.log
