import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Provider/favourite_provider.dart';

class Favourite_Screen extends StatefulWidget {
  const Favourite_Screen({Key? key}) : super(key: key);

  @override
  State<Favourite_Screen> createState() => _Favourite_ScreenState();
}

class _Favourite_ScreenState extends State<Favourite_Screen> {

// List<int> Fav_List= [];

  @override
  Widget build(BuildContext context) {
    print("build");

    // final fav_Provider = Provider.of<Favourite_Provider>(context);

    return Scaffold(
appBar: AppBar(title: Text("Favourite"),),
body: Column(
     children: [

       Expanded(
         child: 
         Consumer<Favourite_Provider>(builder: (context, value, child) {
           return   ListView.builder(
           itemCount: 50,
           itemBuilder:(context,index){
             return ListTile(

             onTap: (){
               if(value.Fav_List.contains(index)){
                 value.removeItem(index);
               }
               else{
               value.addItem(index);
               }
             
             },

           title: Text("data"),
           trailing: value.Fav_List.contains(index)? Icon(Icons.favorite): Icon(Icons.favorite_border_outlined) ,
         );});
           
         })),
       
    
       
     ],
    ),
    );
    
  }
}