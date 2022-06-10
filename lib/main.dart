import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Provider/count_provider.dart';
import 'package:provider1/Provider/favourite_provider.dart';
import 'package:provider1/Provider/slider_provider.dart';
import 'package:provider1/Provider/theme_chan.dart';
import 'package:provider1/Screens/Count_Screen/count_screen.dart';
import 'package:provider1/Screens/Favourite_Screen/favourite_screen.dart';
import 'package:provider1/Screens/Slider_Screen/slider_screen.dart';
import 'package:provider1/Screens/Theme_changer_Screen/theme_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_)=> Count_Provider()),
      ChangeNotifierProvider(create: (_)=> Slider_Provider()),
      ChangeNotifierProvider(create: (_)=> Favourite_Provider()),
      ChangeNotifierProvider(create: (_)=> Theme_Changer()),
      

    ],
    child: Builder(builder: (BuildContext context){
      final theme_Changer = Provider.of<Theme_Changer>(context);
      return MaterialApp(
        title: "Provider",
        themeMode: theme_Changer.thememode,
        theme: ThemeData(
          primarySwatch: Colors.amber,
          scaffoldBackgroundColor: Colors.white
        ),
        darkTheme: ThemeData(

          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.grey,
          appBarTheme: AppBarTheme(
            color: Colors.teal
          ),
          iconTheme: IconThemeData(
            color: Colors.blue
          )
         
        ),
        home: Theme_Changer_Screen(),

      );
    })

   // MultiProvider

    //  MaterialApp(
    //   home:  Theme_Changer_Screen (),
    // ),
    );


    // single provider

    // ChangeNotifierProvider(create: (_) => Count_Provider(),
    // child: MaterialApp(
    //   home: Count_Screen(),
    // ),);
  
  }
}

