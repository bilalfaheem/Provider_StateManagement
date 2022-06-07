import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Provider/slider_provider.dart';

class Slider_Screen extends StatefulWidget {
  const Slider_Screen({Key? key}) : super(key: key);

  @override
  State<Slider_Screen> createState() => _Slider_ScreenState();
}

class _Slider_ScreenState extends State<Slider_Screen> {

// double value = 1.0;

  @override
  Widget build(BuildContext context) {

    // no need when all thing is in consumer
    // final slider_Provider = Provider.of<Slider_Provider>(context,listen: false);
    print("build");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<Slider_Provider>(builder: (context, value, child) {
            return 
             Slider(
            min: 0,
            max: 1,
            value: value.value, onChanged: (val){
              print(val);
            value.setValue(val);

          });
            
          }),
         Consumer<Slider_Provider>(builder: (context,value,child){

return  Row(
  mainAxisAlignment: MainAxisAlignment.center,
           children: [

           Container(
          height: 50,
          child: Text("Container 1"),
          color: Colors.green.withOpacity(value.value),
        ),
  Container(
          height: 50,
          child: Text("Container 2"),
          color: Colors.red.withOpacity(value.value),
        ), 

         ],);

         })
        
    

        ],
      ),
    );
    
  }
}