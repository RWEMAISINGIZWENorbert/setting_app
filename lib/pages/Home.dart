import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:setting_app/models/settings_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
        
       List<SettingsData> myData  = SettingsData.initData();

     return Scaffold(
      appBar: AppBar(
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
      ),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: myData.map((dat) => ListTile(
                  title: Text(dat.name),
                  leading: CircleAvatar(
                    backgroundColor: dat.color,
                    child: dat.icon,
                  ),
                  trailing: Icon(IconlyLight.arrow_right_2,),
                )).toList(),
              ),
        );
      },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Row(
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
      ),
    );
  }
}