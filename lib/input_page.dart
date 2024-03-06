import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color.fromARGB(255, 224, 175, 41);
const reusableCardsColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC CALCULATEUR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(child: ReusableCard())
              ],
            ),
          ),
          Expanded(child: ReusableCard()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(
                    child: ReusableCard(
                  colour: Colors.white,
                ))
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour; // Déclarez la variable d'instance ici comme non-nullable

  // Corrigez le constructeur pour initialiser correctement le champ avec une valeur par défaut
  ReusableCard({this.colour = reusableCardsColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
// Color(0xFF1D1E33)