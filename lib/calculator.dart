import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  late double _imc;

  Calculator({required this.height, required this.weight});

  String calculateIMC() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return "Un peu trop enrobé !";
    } else if (_imc >= 18.5) {
      return "Tout va bien, pas de panique !";
    } else {
      return "Trop maigre !";
    }
  }
String getInterpretation() {
  if (_imc >= 25) {
    return "Un peu trop enrobé ! 🍔 Il est peut-être temps de faire un peu d'exercice ou d'embrasser la douceur !";
  } else if (_imc >= 18.5) {
    return "Tout va bien, pas de panique ! 🥗 Continuez comme ça, vous êtes dans la zone verte !";
  } else {
    return "Trop maigre ! 🍔 Est-ce que quelqu'un a volé votre déjeuner ? Il est temps de prendre un burger !";
  }
}

}

