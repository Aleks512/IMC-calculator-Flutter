import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_col_content.dart';
import 'reusable_cart.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color.fromARGB(255, 224, 175, 41);
const reusableCardsColor = Color(0xFF1D1E33);

const maleIcon = FontAwesomeIcons.mars;
const femaleIcon = FontAwesomeIcons.venus;
const femaleText = "FEMME";
const maleText = "HOMME";

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
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardHeight: 30,
                    cardChild: CustomColumnContent(
                      customText: maleText,
                      customIcon: maleIcon,
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  cardChild: CustomColumnContent(
                      customIcon: femaleIcon, customText: femaleText),
                ))
              ],
            ),
          ),
          const Expanded(child: ReusableCard()),
          const Expanded(
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
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}



// Color(0xFF1D1E33)