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
        scaffoldBackgroundColor: const Color(0xFF0A0E32),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 240, 57, 6),
        ),
        appBarTheme: const AppBarTheme(backgroundColor:Color(0xFF0A0E23) )
      ),
      home: const InputPage(),
    );
  }
}
