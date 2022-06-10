import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Provider/theme_chan.dart';

class Theme_Changer_Screen extends StatefulWidget {
  const Theme_Changer_Screen({Key? key}) : super(key: key);

  @override
  State<Theme_Changer_Screen> createState() => _Theme_Changer_ScreenState();
}

class _Theme_Changer_ScreenState extends State<Theme_Changer_Screen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<Theme_Changer>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Theme Changer"),),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Mode"),
            value: ThemeMode.light, groupValue: themeChanger.thememode, onChanged: themeChanger.setTheme),
             RadioListTile<ThemeMode>(
            title: Text("Dark Mode"),
            value: ThemeMode.dark, groupValue: themeChanger.thememode, onChanged: themeChanger.setTheme),
             RadioListTile<ThemeMode>(
            title: Text("System Mode"),
            value: ThemeMode.system, groupValue: themeChanger.thememode, onChanged: themeChanger.setTheme),
  Icon(Icons.favorite)

        ],

        
        
      ),
    );
    
  }
}
