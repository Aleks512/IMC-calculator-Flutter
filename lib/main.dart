import 'package:flutter/material.dart';

void main() {
  runApp(const IMCalculateur());
}

class IMCalculateur extends StatelessWidget {
  const IMCalculateur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
    );
    home:InputPage();
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
        title: Text("IMC CALCULATEUR"),
      ),
      body: Center(
        child: Text('Text Body2'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
