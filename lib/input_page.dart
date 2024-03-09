import 'package:flutter/material.dart';
import 'custom_col_content.dart';
import 'reusable_cart.dart';

const bottomContainerColor = Color.fromARGB(255, 224, 175, 41);
// use enum instead of int when u have more then 1 options
enum Gender{male, female} // 1 enum declaration 

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardsColor;
  Color femaleCardColor = inactiveCardsColor;

  void updateColour(Gender gender) { // 2 enum pass as param to function
    if (gender == Gender.male) { // 3. enum chosse option
      if (maleCardColor == inactiveCardsColor) {
        maleCardColor = reusableCardsColor;
        femaleCardColor = inactiveCardsColor;
        print(gender);
      } else {
        maleCardColor = inactiveCardsColor;
      }
    }

    if (gender == Gender.female) {
      if (femaleCardColor == inactiveCardsColor) {
        femaleCardColor = reusableCardsColor;
        maleCardColor = inactiveCardsColor;
        print(gender);
      } else {
        femaleCardColor = inactiveCardsColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          updateColour(Gender.male);
                        },
                      );
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardHeight: 30,
                      cardChild: CustomColumnContent(
                        customText: maleText,
                        customIcon: maleIcon,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        updateColour(Gender.female);
                      },
                    );
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: CustomColumnContent(
                        customIcon: femaleIcon, customText: femaleText),
                  ),
                ))
              ],
            ),
          ),
          const Expanded(
              child: ReusableCard(
            colour: reusableCardsColor,
          )),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour:reusableCardsColor,
                )),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardsColor,
                  ),
                )
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