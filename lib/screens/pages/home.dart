import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF00AA77), Color(0xFF007C91)],
          begin: Alignment.topCenter, // canh giữa cạnh trên cùng
          end: Alignment.bottomCenter, // canh giữa cạnh dưới cùng 
          ),
        ),
        child: 
      )
    );
  }
}