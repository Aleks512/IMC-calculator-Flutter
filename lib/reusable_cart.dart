import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color.fromARGB(255, 224, 175, 41);
const inactiveCardsColor = Color(0xFF1D1E33);
const reusableCardsColor = Color(0xFF0A0E23);

class ReusableCard extends StatelessWidget {
  final Color? colour; // Déclarez la variable d'instance ici comme non-nullable
  final Widget? cardChild; //custom widget
  final double? cardHeight;
  // Corrigez le constructeur pour initialiser correctement le champ avec une valeur par défaut
  const ReusableCard(
      {super.key,
      this.colour,
      this.cardChild,
      this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0), // Ajoutez cette ligne
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
      child: cardChild,
    );
  }
}