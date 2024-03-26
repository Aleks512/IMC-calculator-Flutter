# imc_calculateur

A new Flutter project.

# IMC Calculateur

Ce projet est une application de calcul de l'Indice de Masse Corporelle (IMC) développée en Dart avec le framework Flutter. L'IMC est un indicateur utilisé pour évaluer le poids corporel d'une personne en fonction de sa taille. Cette application permet à l'utilisateur de saisir sa taille, son poids et son âge pour obtenir son IMC ainsi qu'une évaluation de sa condition physique.

## Fonctionnalités

- **Calcul de l'IMC:** L'application calcule automatiquement l'IMC en fonction de la taille et du poids saisis par l'utilisateur.
- **Évaluation de la condition physique:** Basé sur l'IMC calculé, l'application fournit une évaluation de la condition physique de l'utilisateur, indiquant s'il est en surpoids, de poids normal ou en sous-poids.
- **Navigation entre les écrans:** L'application comporte plusieurs écrans pour la saisie des données et l'affichage des résultats, avec une navigation fluide entre ces écrans.

## Structure du Code

Le code source est divisé en plusieurs fichiers pour une meilleure organisation et une séparation des préoccupations :

- **`calculator.dart` :** Contient la logique métier pour le calcul de l'IMC et l'évaluation de la condition physique.
- **`input_page.dart` :** Écran principal de l'application où l'utilisateur peut saisir ses données.
- **`result_page.dart` :** Écran affichant les résultats de l'IMC et l'évaluation de la condition physique.
- **`btn.dart` :** Widget personnalisé pour le bouton de grande taille utilisé dans l'application.
- **`reusable_cart.dart` :** Widget réutilisable pour les cartes affichées sur l'écran principal.

## Démo

<img src="assets/untitled.gif" alt="IMC Calculateur" style="width: 30%;">

## Installation

1. Assurez-vous d'avoir Flutter installé sur votre système.
2. Clonez ce dépôt sur votre machine.
3. Exécutez `flutter pub get` pour installer les dépendances.
4. Connectez un appareil Android ou iOS ou utilisez un émulateur.
5. Exécutez `flutter run` pour lancer l'application.

---

Ce projet a été développé avec passion pour le bien-être et la santé.
