#!/bin/bash

# Nom du répertoire où se trouve ta configuration Terraform
TERRAFORM_DIR="/home/xxx/xxx/xxx/xxx"

# Aller dans le répertoire Terraform
cd $TERRAFORM_DIR || { echo "Le répertoire $TERRAFORM_DIR n'existe pas"; exit 1; }

# Chemin vers le fichier openrc.sh
OPENRC_FILE="/home/xxx/xxx/xxx/xxx/openrc.sh"

# Nom du répertoire où se trouve ta configuration Terraform
TERRAFORM_DIR="/home/xxx/xxx/xxx/xxx"

# Vérifier si le fichier openrc.sh existe
if [ -f "$OPENRC_FILE" ]; then
    echo "Chargement du fichier openrc.sh..."
    source $OPENRC_FILE
else
    echo "Erreur : Le fichier $OPENRC_FILE n'existe pas."
    exit 1
fi

# Initialiser Terraform (téléchargement des providers, création du backend, etc.)
echo "Initialisation de Terraform..."
terraform init

# Planifier l'infrastructure (vérifier les modifications à faire)
echo "Planification de l'infrastructure..."
terraform plan -out=plan.tfplan

# Appliquer le plan pour créer/modifier l'infrastructure
echo "Application du plan..."
terraform apply "plan.tfplan"

# Optionnel: Vérifier si l'application a réussi
if [ $? -eq 0 ]; then
    echo "L'infrastructure cloud a été créée avec succès."
else
    echo "Erreur lors de la création de l'infrastructure."
    exit 1
fi
