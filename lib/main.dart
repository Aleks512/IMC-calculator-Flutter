import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const IMCalculateur());
}

class IMCalculateur extends StatelessWidget {
  const IMCalculateur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 2, 36, 3),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(93, 14, 40, 14), // Définissez explicitement la couleur de fond de l'AppBar
        ),
        useMaterial3: true,
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          primary: Color.fromARGB(255, 115, 93, 78),
          seedColor: Color.fromARGB(255, 78, 115, 79),
          brightness: Brightness.dark,    
        ),
      ),
      home:
          InputPage(), // Correction: placez cette ligne à l'intérieur du MaterialApp.
    );
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
