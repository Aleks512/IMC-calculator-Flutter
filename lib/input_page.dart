import 'package:flutter/material.dart';
import 'custom_col_content.dart';
import 'reusable_cart.dart';

const bottomContainerColor = Color.fromARGB(255, 224, 175, 41);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardsColor;
  Color femaleCardColor = inactiveCardsColor;

  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardsColor) {
        maleCardColor = reusableCardsColor;
        femaleCardColor = inactiveCardsColor;
        print(gender);
      } else {
        maleCardColor = inactiveCardsColor;
      }
    }

    if (gender == 2) {
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
                          updateColour(1);
                        },
                      );
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
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
                        updateColour(2);
                      },
                    );
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
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