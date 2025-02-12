import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:setting_app/componets/bottom_widget.dart';
import 'package:setting_app/models/settings_data.dart';
import 'package:setting_app/pages/network.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
        
       List<SettingsData> myData  = SettingsData.initData();

     return Scaffold(
      appBar: MyAppBar(),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (context, index) {
            return
            //  Container(
              // child: Column(
                // children: myData.map((dat) => 
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Network(data: myData[index])
                        ) 
                    );
                  },
                  title: Text(myData[index].name),
                  leading: CircleAvatar(
                    backgroundColor: myData[index].color,
                    child: myData[index].icon,
                  ),
                  trailing: Icon(IconlyLight.arrow_right_2,),
                );
                // ).toList(),
              // ),
        // );
      },
      ),
      bottomNavigationBar: BottomWidget(),
    );
  }

  AppBar MyAppBar() {
    return AppBar(
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