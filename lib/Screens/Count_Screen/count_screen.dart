import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Provider/count_provider.dart';

class Count_Screen extends StatefulWidget {
  const Count_Screen({Key? key}) : super(key: key);

  @override
  State<Count_Screen> createState() => _Count_ScreenState();
}

class _Count_ScreenState extends State<Count_Screen> {

  // int coun = 0;
  // @override
  // void initstate(){
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 1),(timer){
  //     count++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final count_Provider = Provider.of<Count_Provider>(context,listen: false);
    print("build");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: 
          Consumer<Count_Provider>(builder: (context,value,child){
            return  Text(value.count.toString(),style: TextStyle(fontSize: 50),);
          })
          
          ,),

          FloatingActionButton(onPressed: (){
            count_Provider.setCount();
          },
          child: Icon(Icons.add))
        ],
      ),

    );
    
  }
}