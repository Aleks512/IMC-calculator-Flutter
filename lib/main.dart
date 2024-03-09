import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const IMCalculateur());
}

class IMCalculateur extends StatelessWidget {
  const IMCalculateur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E32),
        appBarTheme: const AppBarTheme(backgroundColor:Color(0xFF0A0E23) )
      ),
      home: const InputPage(),
    );
  }
}
