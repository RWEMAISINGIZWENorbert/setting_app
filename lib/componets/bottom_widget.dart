
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
       color: Colors.transparent,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
              children: [
                Icon(IconlyBold.home, color: Colors.deepPurple[700], size: 17,),
              Text('Home', style: GoogleFonts.aBeeZee(
                 fontSize: 10,
                 fontWeight: FontWeight.bold,
                 color: Colors.deepPurple[700]
              ),
              ),
               ]
              ),
              const SizedBox(width: 15,),
              Column(
              children: [
                Icon(IconlyLight.notification, color: Colors.black,  size: 17,),
              Text('Notification', style: GoogleFonts.aBeeZee(
                 fontSize: 10,
                 color: Colors.black
              ),
              ),
               ]
              ),
              const SizedBox(width: 15,),
              Column(
              children: [
                Icon(IconlyLight.notification, color: Colors.black, size: 17,),
              Text('Notification', style: GoogleFonts.aBeeZee(
                 fontSize: 10,
                 color: Colors.black
              ),
              ),
               ]
              ),
              const SizedBox(width: 15,),
              Column(
              children: [
                Icon(IconlyLight.notification, color: Colors.black, size: 17,),
              Text('Notification', style: GoogleFonts.aBeeZee(
                 fontSize: 10,
                 color: Colors.black
              ),
              ),
               ]
              ),
              const SizedBox(width: 15,),
            ],
          )
         ],
       ),
    );
  }
}