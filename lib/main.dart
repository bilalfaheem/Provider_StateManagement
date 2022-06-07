import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Provider/count_provider.dart';
import 'package:provider1/Provider/slider_provider.dart';
import 'package:provider1/Screens/Count_Screen/count_screen.dart';
import 'package:provider1/Screens/Slider_Screen/slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> Count_Provider()),
      ChangeNotifierProvider(create: (_)=> Slider_Provider())
    ],
    child:  MaterialApp(
      home:  Slider_Screen (),
    ),
    );


    // single provider
    // ChangeNotifierProvider(create: (_) => Count_Provider(),
    // child: MaterialApp(
    //   home: Count_Screen(),
    // ),);
  
  }
}

