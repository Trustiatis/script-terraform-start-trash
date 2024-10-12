# script-terraform-start-trash
A simple bash.sh to deploy your infrastrusture and destroy for terraform on Linux

# Terraform Infrastructure Management

## Description

Ces scripts utilisent **Terraform** pour gérer et provisionner des infrastructures sur public cloud. Terraform permet de définir, déployer et maintenir des ressources d'infrastructure telles que des serveurs, des réseaux, des bases de données, des services de stockage, et bien plus, via des fichiers de configuration lisibles et versionnables.

L'objectif principal de ces script est de fournir un script pour charger le fichier et de lancer le "terraform apply" dans pour un environement de test. Il peut aussi servir à des taches crons. (Vraiment basique)

## Fonctionnalités

Le code est commenté

## Prérequis

- **Terraform** : Version 1.0+ (à installer depuis [Terraform](https://www.terraform.io/downloads.html))
- **Fournisseurs de services cloud** : Les identifiants d'authentification nécessaires pour interagir avec l' API Openstack de services cloud (ex. AWS, GCP, Azure, Infominiak, OVH).

## Utilisation

Modifiez les paths... /xxx/xxxx... 

1. Clonez ce dépôt :
   ```bash
   git clone https://github.com/Trustiatis/script-terraform-start-trash
   cd script-terraform-start-trash
