import 'package:flutter/material.dart';
import 'package:flutter_rpg_app/models/vocation.dart';
import 'package:flutter_rpg_app/screens/create/vocation_card.dart';
import 'package:flutter_rpg_app/shared/styled_button.dart';
import 'package:flutter_rpg_app/shared/styled_text.dart';
import 'package:flutter_rpg_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  //submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      print("name must not be empty");
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      print("slogan must not be empty");
      return;
    }
    print(_nameController.text);
    print(_sloganController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Character Creation'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Welcome Message
              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              const Center(child: StyledHeading("Welcome New Player!!")),
              const Center(child: StyledText("Create a name and slogan for your character")),
              const SizedBox(height: 30),
          
              //Input for name and slogan
              TextField(
                controller: _nameController,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                cursorColor: AppColors.textColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: StyledText("Character Name"),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _sloganController,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                cursorColor: AppColors.textColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.chat),
                  label: StyledText("Character Slogan"),
                ),
              ),
              const SizedBox(height: 30),
          
              //select vocation title
              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              const Center(child: StyledHeading("Choose a vocation")),
              const Center(child: StyledText("This determines your available skills and abilities")),
              const SizedBox(height: 30),
          
              //Vocation Cards
              const VocationCard(vocation: Vocation.junkie),
              const VocationCard(vocation: Vocation.ninja),
              const VocationCard(vocation: Vocation.raider),
              const VocationCard(vocation: Vocation.wizard),
          
              Center(
                child: StyledButton(
                  onPressed: handleSubmit,
                  child: const StyledHeading("Create Character"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
