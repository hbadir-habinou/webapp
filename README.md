# 🚀 SimpleWeb-CI: Site Web Statique et Pipeline CI/CD

[![Build Status](https://img.shields.io/badge/Pipeline-Jenkins%20CI%2FCD-blue?style=for-the-badge&logo=jenkins)](https://github.com/hbadir-habinou/webapp.git)
[![Dockerized](https://img.shields.io/badge/Containerized-Docker-2496ED?style=for-the-badge&logo=docker)](https://www.docker.com/)

## 💡 Vision du Projet : Du Code au Conteneur, Automatiquement

Ce projet est une démonstration concrète et pédagogique qui relie deux mondes essentiels de l'ingénierie logicielle moderne : le **Développement Web** et l'**Automatisation DevOps**.

**En termes simples, ce dépôt contient :**

1.  **Un Site Web Statique Fonctionnel :** Une page simple et moderne (HTML/CSS) présentant des services de base.
2.  **Un Pipeline CI/CD Complet :** Un système automatisé (via Jenkins) qui prend le code, le prépare, le conteneurise et le déploie sans intervention manuelle.

L'objectif principal est de prouver la capacité à mettre en place un flux de travail **Continu** et **Répétable** pour livrer une application web.

## 🎯 Fonctionnalités Clés

| Composant | Description | Avantage pour le Projet |
| :--- | :--- | :--- |
| **Site Web Statique** | Page d'accueil simple, responsive, servie par Nginx. | Fournit l'artefact applicatif à livrer. |
| **Conteneurisation Docker** | Le site est empaqueté dans une image Docker légère. | Assure un environnement d'exécution **uniforme** et **isolé** (le fameux "ça marche sur ma machine"). |
| **Pipeline Jenkins** | Fichier `Jenkinsfile` déclaratif définissant les étapes CI/CD. | Automatise la construction, le test et le déploiement, garantissant une livraison **rapide** et **fiable**. |
| **Notifications Slack** | Intégration des notifications de statut de build. | Offre une **visibilité immédiate** sur le succès ou l'échec du processus de livraison. |

## ⚙️ Architecture Technique

Le projet repose sur une stack technique légère et orientée automatisation :

### 1. Le Site Web (`site_simple/`)

C'est l'application front-end. Elle est composée de :
*   `index.html` : La structure de la page.
*   `style.css` : La mise en forme visuelle.

### 2. La Conteneurisation (`Dockerfile`)

Le `Dockerfile` utilise une image de base Ubuntu pour installer le serveur web **Nginx**. Il configure ensuite Nginx pour servir le contenu du site sur le **port 80**.

**Processus de construction de l'image :**
1.  Utilisation d'Ubuntu 22.04.
2.  Installation de Nginx.
3.  Copie du code source du site web dans le répertoire de service de Nginx.
4.  Définition de Nginx comme point d'entrée du conteneur.

### 3. L'Automatisation (`Jenkinsfile`)

Le cœur du projet est le `Jenkinsfile`. Il définit un pipeline en plusieurs étapes qui s'exécute à chaque changement de code :

| Étape du Pipeline | Rôle |
| :--- | :--- |
| **Démarrage** | Notifie Slack du début du build. |
| **Checkout** | Récupère la dernière version du code source. |
| **Build** | (Simulé) Étape où l'image Docker serait construite et taguée. |
| **Test** | (Simulé) Étape où les tests unitaires/d'intégration seraient exécutés. |
| **Déploiement** | (Simulé) Étape où le conteneur serait déployé sur un environnement cible (ex: DEV). |
| **Post-Actions** | Envoi de la notification finale (Succès ou Échec) sur Slack. |

## 📂 Structure du Dépôt

```
SimpleWeb-CI/
├── Dockerfile          # Instructions pour construire l'image Docker (Nginx + Site)
├── Jenkinsfile         # Définition du pipeline CI/CD pour Jenkins
├── site_simple/        # Dossier contenant les fichiers du site web statique
│   ├── index.html      # Page d'accueil du site
│   └── style.css       # Styles CSS
├── README.md           # Ce fichier
└── ... (fichiers de test)
```

## 🚀 Démarrage Rapide (Local avec Docker)

Pour lancer le site web localement et vérifier l'artefact final :

1.  **Cloner le dépôt :**
    ```bash
    git clone https://github.com/hbadir-habinou/webapp.git
    cd webapp
    ```

2.  **Construire l'image Docker :**
    ```bash
    docker build -t simpleweb-ci-image .
    ```

3.  **Lancer le conteneur :**
    ```bash
    docker run -d -p 8080:80 --name simpleweb-ci-container simpleweb-ci-image
    ```
    *(Ceci mappe le port 80 du conteneur au port 8080 de votre machine locale.)*

4.  **Accéder au site :**
    Ouvrez votre navigateur et naviguez vers `http://localhost:8080`.

## 🖼️ Note Importante sur les Fichiers de Test

Les fichiers images présents à la racine du dépôt (ex: `Capture_d_écran...`, `WhatsApp Image...`) ne font **pas** partie de l'application web. Ils ont été inclus uniquement pour des tests spécifiques liés au pipeline CI/CD (par exemple, pour vérifier le bon fonctionnement du `checkout` ou de l'archivage d'artefacts).


---
*Rédigé par Manus AI pour hbadir-habinou.*
