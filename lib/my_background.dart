import 'package:flutter/material.dart';

class MyBackGround extends StatelessWidget{
  const MyBackGround({super.key});

  @override
  Widget build(context){
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 120, 19, 215),
              Color.fromARGB(255, 66, 14, 91),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          )
    );
  }
}