# Readme

## Prérequis 

### Organisation du projet

 - Les posts doivent être créés dans le répertoire `posts`.
 - Les images et autres fichiers statiques doivent être déposés dans le répertoire `static`, et être classés dans un répertoire ayant le même nom que le post auquel ils sont associés.

### Outils nécessaires 

#### Docker 

[Site web de Docker](https://www.docker.com/)

#### Hugo 

[Site web d'Hugo](https://gohugo.io/)
[Releases d'Hugo](https://github.com/gohugoio/hugo/releases)

## Construire une image 

- Télécharger la dernière release "extended" de Hugo pour Linux.
- Extraire le binaire Hugo à côté du répertoire `ptechdej`
- Lancer la commande de construction d'une image Docker : `docker build --no-cache -t ptechdej .` (versionner l'image si besoin).

## Lancer un container

docker run -d -p 8080:80 ptechdej

## Ajouter un nouveau thème

- Ajouter le thème dans le répertoire `themes` et modifier le fichier `config.toml`.
- Reconstruire l'image Docker. 

## TODO 

- Prendre en compte une variable d'environnement pour définir l'URL du site web, actuellement, c'est toujours localhost.
- Améliorer la commande `sed` exécutée pendant la construction de l'image Docker. Actuellement, elle ne prend pas en compte tous les chemins de fichiers statiques.
- Télécharger Hugo dans le Dockerfile