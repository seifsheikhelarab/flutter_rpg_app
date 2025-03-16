import 'package:flutter/material.dart';
import 'package:flutter_rpg_app/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Your Characters'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const StyledText("Character list"),
            StyledHeading("Character list"),
            StyledTitle("Character list"),
            FilledButton(onPressed: (){}, child: const Text("Create New!!"))
          ],
        ),
      ),
    );
  }
}