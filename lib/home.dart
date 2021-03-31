import 'package:flutter/material.dart';
import 'package:practice0/Nav.dart';

/*void main(){
  runApp(MyApp());
}*/

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Nav Bar',
      home: Nav(),
    );
  }

}