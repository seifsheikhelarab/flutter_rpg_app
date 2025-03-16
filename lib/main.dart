import 'package:flutter/material.dart';
import 'package:flutter_rpg_app/screens/home/home.dart';
import 'package:flutter_rpg_app/theme.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: primaryTheme,));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(child: Text("sandbox")),
    );
  }
}
