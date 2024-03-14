import 'package:flutter/material.dart';
import 'package:imc_calculateur/components/reusable_cart.dart';
import '../constants.dart';
import 'package:imc_calculateur/components/bottom_btn.dart';
import '../calculator.dart';

class ResultsPage extends StatelessWidget {
  //1. <Add proprieties to be able to pass them to constructor and the use it here and in input_page while navigation
  final String imcResult;
  final String textResult;
  final String textInterpretation;
  const ResultsPage({super.key, required this.imcResult, required this.textResult, required this.textInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC CALCULATOEUR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(
                child: Text(
              'Votre Résultat',
              style: kTitleTextStyle,
            )),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kReusableCardsColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      textResult,
                      style: kResultTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(imcResult, style: kResultNumbertextStyle),
                  ),
                  Text(textInterpretation,
                      style: kRecommendationTextStyle,
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          BigYellowBotton(
              onTap: () {
                Navigator.pop(context);
              },
              BtnText: "RECALCULER")
        ],
      ),
    );
  }
}
