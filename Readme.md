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

### Marp 

[Site web de Marp ](https://marp.app/#get-started)
[Documentation Marpit](https://marpit.marp.app/)
[Extension VSCode pour Marp](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)

#### Génération de la présentation Marp

Une fois la présentation terminée, exporter en HTML (via le plugin VSCode), et l'ouvrir.
Une interface multi-écrans avec les notes de présentation sera disponible.


## Construire une image 

- Télécharger la dernière release "extended" de Hugo pour Linux.
- Extraire le binaire Hugo à côté du répertoire `ptechdej`
- Lancer la commande de construction d'une image Docker : `docker build --no-cache -t ptechdej:{version} .` (versionner l'image si besoin).

## Lancer un container

`docker run -d -p 8080:80 ptechdej:{version}`

## Ajouter un nouveau thème

- Ajouter le thème dans le répertoire `themes` et modifier le fichier `config.toml`.
- Reconstruire l'image Docker. 

## TODO 

- Améliorer la commande `sed` exécutée pendant la construction de l'image Docker. Actuellement, elle ne prend pas en compte tous les chemins de fichiers statiques.
- Pouvoir tester le contenu d'Hugo pendant l'édition (hugo server -D) sur le port 1313.