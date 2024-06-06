# Application de Gestion des Utilisateurs

## Introduction

L'Application de Gestion des Utilisateurs est une application web Java EE simple pour gérer les informations des utilisateurs. L'application permet d'ajouter, de modifier, de supprimer et de lister des utilisateurs. Elle utilise JSP, Servlets et JSTL pour le frontend et une base de données MySQL pour stocker les informations des utilisateurs.

## Fonctionnalités

- Lister tous les utilisateurs
- Ajouter un nouvel utilisateur
- Modifier un utilisateur existant
- Supprimer un utilisateur

## Technologies Utilisées

- Java EE
- JSP, Servlets, JSTL
- MySQL
- Apache Tomcat
- Maven

## Prérequis

Avant de commencer, assurez-vous d'avoir installé les éléments suivants :

- [JDK 17 ou plus récent](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Apache Maven](https://maven.apache.org/)
- [Apache Tomcat](http://tomcat.apache.org/)
- [MySQL](https://www.mysql.com/)

## Installation

### 1. Cloner le Répertoire

```sh
git clone https://github.com/votre-nom-utilisateur/user-management-app.git
cd user-management-app

## Création et configuration de la base de données

Créer une base de données MySQL nommée `demo`. Puis dans cette base de données, créer une table nommée `users` dans laquelle vous allez ajouter les attributs :

- id
- name
- email
- password
- telephone

## Démarrage du projet

Une fois toutes ces étapes effectuées, il ne vous reste qu'à lancer le projet. Pour ce faire, suivez les étapes ci-dessous :

- Aller à la racine de votre projet et faites un clic droit dessus.
- Sur le menu qui vous est affiché, sélectionnez `Run as` puis `Run on Server`.
- Sur la fenêtre qui vous est affichée, choisissez le serveur sur lequel sera démarré le projet.
- Enfin, cliquez sur `Finish`.
