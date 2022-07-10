# Installation

## Prerequisites

- node
- npm

## Create a new project

- Create repository > public

## Clone the repository

- Git clone du repository
- cd "repository name"

## Create react app

- npx create-react-app .

## Install gh-pages

- npm install gh-pages --save-dev

## Configuration gh-pages dans package.json

- "homepage": "https://edithbdev.github.io/react-project"
- scripts:
  - "predeploy": "npm run build",
  - "deploy": "gh-pages -d build",
    <!-- - "scripts": {
        "build": "npm run build",
        "start": "npm run build && npm run start-gh-pages",
        "start-gh-pages": "gh-pages -d build",
        "build-gh-pages": "gh-pages -d build --message \"Update gh-pages\"",
        "deploy": "npm run build-gh-pages && npm run deploy-gh-pages",
        "deploy-gh-pages": "gh-pages -d build --message \"Update gh-pages\""
      } -->
  - npm run deploy

## Deploy gh-pages

- npm run deploy
- creation d'un nouveau dossier .github/workflows/workflow.yml
- git add . / git commit -m "Initial commit" / git push

## Install Docker

- https://docs.docker.com/desktop/mac/install/

<!-- -- name: Login to Docker Hub
        run: echo "${{ secrets.DOCKER_HUB_TOKEN }}" | docker login -u "${{ secrets.DOCKER_HUB_USERNAME }}" --password-stdin -->

### Fichier Dockerfile

- docker build -t react-image .
- docker image ls > pour vérifier si l'image est bien présente
- docker container stop "container id"
- docker image rm "image id" > pour supprimer l'image
- docker run -d -p 3000:3000 --name react-app react-image > pour lancer le container
- docker run -v ${pwd}\src:/app/src -d -p 3000:3000 --name react-app react-image > pour lancer le container avec un volume
- docker run -e CHOKIDAR_USEPOLLING=true -v ${pwd}\src:/app/src -d -p 3000:3000 --name react-app react-image > pour lancer le container avec un volume et un watcher
- docker rm react-app -f > pour supprimer le container
- docker exec -it react-app bash > pour accéder au container

  - ls / pour voir les fichiers
  - exit pour quitter le container

  ### dockerfile deploy

  - créer un fichier Dockerfile.dev
  - docker build -f Dockerfile.dev -t react-image-dev . > pour créer l'image de développement
  - créer un fichier Dockerfile.prod
  - docker build -f Dockerfile.prod -t react-image-prod . > pour créer l'image de production
  - docker-compose -f docker-compose.yaml -f docker-compose-prod.yaml up -d --build > pour lancer le déploiement

### Fichier dockerignore

### Docker-compose

- docker-compose up -d
- docker-compose up -d --build > pour compiler les images
- docker-compose down

## Sources

- https://www.youtube.com/watch?v=8VHheCkw-7k <!-- -- Docker Build containerizing a react.js App -->
- https://github.com/kenessajr/react-with-actions
- https://blog.logrocket.com/ci-cd-pipelines-react-github-actions-heroku/
- https://www.youtube.com/watch?v=3xDAU5cvi5E <!-- -- Docker + ReactJS tutorial: Development to Production workflow + multi-stage builds + docker compose -->

## commandes

- pwd - pour afficher le répertoire courant
- docker ps -a - pour afficher les containers
