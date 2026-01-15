# 🚀 WebApp - Site Web Statique et Pipeline CI/CD

## Description du Projet

Ce dépôt sert de démonstration pour un projet web complet, intégrant un **site web statique simple** et un **pipeline d'intégration et de déploiement continus (CI/CD)** robuste orchestré par Jenkins.

L'objectif principal de ce projet est de présenter la capacité à :
1.  Conteneuriser une application web statique à l'aide de Docker.
2.  Automatiser les étapes de construction, de test et de déploiement via un `Jenkinsfile` déclaratif.

Le site web lui-même est une page simple et moderne, conçue en HTML et CSS, présentant des services de base (Design Web, Développement, Référencement).

## 🛠️ Technologies Utilisées

| Catégorie | Technologie | Rôle dans le Projet |
| :--- | :--- | :--- |
| **Frontend** | HTML5, CSS3 | Structure et style du site web statique. |
| **Conteneurisation** | Docker | Empaquetage de l'application et de son serveur web. |
| **Serveur Web** | Nginx | Serveur web léger pour servir le contenu statique. |
| **CI/CD** | Jenkins | Orchestration du pipeline d'intégration et de déploiement continus. |
| **Notifications** | Slack | Intégration pour les notifications de statut du pipeline. |

## 📂 Structure du Dépôt

Le dépôt est organisé autour des fichiers clés suivants :

```
webapp/
├── Dockerfile
├── Jenkinsfile
├── site_simple/
│   ├── index.html
│   └── style.css
├── README.md
└── ... (fichiers de test de pipeline)
```

### `site_simple/`

Contient les fichiers sources du site web statique :
*   `index.html`: La page d'accueil principale.
*   `style.css`: La feuille de style pour la mise en page.

### `Dockerfile`

Ce fichier définit l'image Docker pour l'application :
*   Base sur `ubuntu:22.04`.
*   Installe Nginx.
*   Configure Nginx pour servir le contenu du site web sur le **port 80**.
*   *Note :* Le Dockerfile actuel clone le contenu du site depuis un dépôt externe pour l'intégrer dans l'image, simulant un processus de construction d'artefact.

### `Jenkinsfile`

Définit le pipeline CI/CD déclaratif de Jenkins. Il comprend les étapes suivantes :

1.  **Démarrage du Pipeline** : Envoi d'une notification Slack de début de build.
2.  **Checkout du Code** : Récupération du code source depuis GitHub.
3.  **Build** : Étape de construction simulée (à remplacer par la commande `docker build` réelle pour l'image).
4.  **Test** : Étape de test simulée (à remplacer par des tests unitaires/d'intégration).
5.  **Déploiement** : Étape de déploiement simulée sur un environnement DEV.

Le pipeline est configuré pour envoyer des notifications de succès ou d'échec sur un canal Slack spécifique (`#jenkins`).

## 🚀 Démarrage Rapide (Local)

Pour lancer le site web localement à l'aide de Docker, suivez ces étapes :

1.  **Cloner le dépôt :**
    ```bash
    git clone https://github.com/hbadir-habinou/webapp.git
    cd webapp
    ```

2.  **Construire l'image Docker :**
    ```bash
    docker build -t webapp-image .
    ```

3.  **Lancer le conteneur :**
    ```bash
    docker run -d -p 8080:80 --name webapp-container webapp-image
    ```
    *(Ceci mappe le port 80 du conteneur au port 8080 de votre machine locale.)*

4.  **Accéder au site :**
    Ouvrez votre navigateur et naviguez vers `http://localhost:8080`.

## 🖼️ À Propos des Images

Comme mentionné, les fichiers images présents à la racine du dépôt (`Capture_d_écran...`, `WhatsApp Image...`) étaient utilisés uniquement pour des tests de pipeline et ne font pas partie du contenu fonctionnel du site web.


