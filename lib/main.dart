import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const IMCalculateur());
}

class IMCalculateur extends StatelessWidget {
  const IMCalculateur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:Color(0xFF0A0E21)),
     home: InputPage());
  }
}

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
      body: const Center(
        child: Text("Aleksandra super Dev"),
      ),
      floatingActionButton: Theme(
        data: ThemeData(colorSchemeSeed: Color.fromARGB(255, 240, 57, 6)),
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
