import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color.fromARGB(255, 224, 175, 41);
const inactiveCardsColor = Color(0xFF1D1E33);
const reusableCardsColor = Color(0xFF0A0E23);

class ReusableCard extends StatelessWidget {
  final Color? colour; // Déclarez la variable d'instance ici comme non-nullable
  final Widget? cardChild; //custom widget
  final double? cardHeight;
  //final Function onPress; on ne peut plus le faire
    // Utilisez VoidCallback ou void Function au lieu de Function
  final VoidCallback? onPress; //Changé pour VoidCallback? si onPress peut être null
  const ReusableCard(
      {super.key,
      this.colour,
      this.cardChild,
      this.cardHeight,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0), // Ajoutez cette ligne
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
    );
  }
}