import 'package:flutter/material.dart';
import 'custom_col_content.dart';
import 'reusable_cart.dart';
import 'constants.dart';

// use enum instead of int when u have more then 1 options
enum Gender { male, female } // 1 enum declaration

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC CALCULATEUR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kReusableCardsColor
                        : kInactiveCardsColor,
                    cardHeight: 30,
                    cardChild: CustomColumnContent(
                      customText: kMaleText,
                      customIcon: kMaleIcon,
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kReusableCardsColor
                      : kInactiveCardsColor,
                  cardChild: CustomColumnContent(
                      customIcon: kFemaleIcon, 
                      customText: kFemaleText),
                ))
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabeltextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabeltextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  // enables to change only wanted proprieties of Slider
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: kInactiveCardsColor,
                    activeTrackColor: const Color.fromARGB(255, 244, 244, 244),
                    trackHeight: 1,
                    thumbColor: kBottomContainerColor,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 17),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 40),

                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    // newValue will be passed from slider to us
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });  
                    },
                  ),
                )
              ],
            ),
            colour: kReusableCardsColor,
          )),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: kReusableCardsColor,
                )),
                Expanded(
                  child: ReusableCard(
                    colour: kReusableCardsColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

// Color(0xFF1D1E33)
