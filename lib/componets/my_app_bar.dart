import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
       backgroundColor: Colors.deepPurple[500],
      elevation: 0,
      leading: Icon(
        IconlyLight.arrow_left_2,
        color: Colors.white,
        ),
      title: Text('Settings', style: GoogleFonts.aBeeZee(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      ),
      centerTitle: true,
    );
  }
}