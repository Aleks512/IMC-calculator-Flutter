import 'package:flutter/material.dart';
import 'package:imc_calculateur/constants.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const IMCalculateur());
}

class IMCalculateur extends StatelessWidget {
  const IMCalculateur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bodyColor,
        appBarTheme: const AppBarTheme(backgroundColor:Color(0xFF0A0E23) )
      ),
      home: const InputPage(),
    );
  }
}
