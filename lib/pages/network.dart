import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:setting_app/models/settings_data.dart';
import 'package:setting_app/pages/Home.dart';

class Network extends StatelessWidget {
  final SettingsData data;

  const Network({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(
                context, 
                MaterialPageRoute(builder: (context) => HomePage())
                );
            },
            child: Icon(
              IconlyLight.arrow_left_2, 
              color: Colors.white,
              ),
            ),
          title: Text(data.name, style: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: CircleAvatar(
            backgroundColor: data.color,
            child: data.icon,
          ),
        ),
      ),
    );
  }
}