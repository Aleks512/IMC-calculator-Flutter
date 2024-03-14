import 'package:flutter/material.dart';
import 'package:imc_calculateur/components/reusable_cart.dart';
import '../constants.dart';
import 'package:imc_calculateur/components/bottom_btn.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

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
                      'Normal',
                      style: kResultTextStyle,
                    ),
                  ),
                  Center(
                    child: Text("18.5", style: kResultNumbertextStyle),
                  ),
                  Text('Votre IMC est trop bas. Vous devriez manger mieux',
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
