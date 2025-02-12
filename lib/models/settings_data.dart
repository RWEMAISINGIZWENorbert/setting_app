import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SettingsData {
    final String name;
    final Color color;
    final Widget icon;

    SettingsData({
      required this.name,
      required this.color,
      required this.icon
    });

 static  List<SettingsData> initData(){
      // data = [
      //   {
      //     name: Text('Network connectivity'),
      //     color: Colors.blue,
      //     icon: Icon(Icons.network_cell_outlined)
      //   },
      //   {
      //     name: Text('Network connectivity'),
      //     color: Colors.blue,
      //     icon: Icon(Icons.network_cell_outlined)
      //   },
      //   {
      //     name: Text('Network connectivity'),
      //     color: Colors.blue,
      //     icon: Icon(Icons.network_cell_outlined)
      //   },
      //   {
      //     name: Text('Network connectivity'),
      //     color: Colors.blue,
      //     icon: Icon(Icons.network_cell_outlined)
      //   },
      //   {
      //     name: Text('Network connectivity'),
      //     color: Colors.blue,
      //     icon: Icon(Icons.network_cell_outlined)
      //   },
      //   {
      //     name: Text('Network connectivity'),
      //     color: Colors.blue,
      //     icon: Icon(Icons.network_cell_outlined)
      //   },
      // ];
       List<SettingsData> data = [];
               
        data.add(SettingsData(name: 'Network connectivity', color: Colors.blue, icon:  Icon(Icons.network_cell_outlined, color: Colors.white,), ), );
        data.add(SettingsData(name: 'Activities', color: Colors.amber, icon:  Icon(IconlyLight.activity, color: Colors.white,), ), );
        data.add(SettingsData(name: 'Devices', color: Colors.red, icon:  Icon(Icons.device_hub, color: Colors.white,), ), );
        data.add(SettingsData(name: 'Network connectivity', color: Colors.green, icon:  Icon(Icons.network_cell_outlined, color: Colors.white,), ), );

    return data;
  }

}