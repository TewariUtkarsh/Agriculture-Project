import 'package:flutter/material.dart';
import 'package:practice1/Nav.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Nav Bar',
      home: Nav(),
    );
  }

}
