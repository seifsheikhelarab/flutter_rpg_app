import 'package:flutter/material.dart';
import 'package:flutter_rpg_app/shared/styled_text.dart';
import 'package:flutter_rpg_app/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Character Creation'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
          Center(child: Icon(Icons.code,color: AppColors.primaryColor)),
          const Center(child: StyledHeading("Welcome New Player!!")),
          const Center(child: StyledText("Create a name and slogan for your character")),
          const SizedBox(height: 30,)
        ]),
      ),
      );
  }
}