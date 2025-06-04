import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';


class AntiRobbery extends StatefulWidget{
  const AntiRobbery ({super.key});

  @override
  State<AntiRobbery> createState() => _AntiRobberyState();
}
class _AntiRobberyState extends State<AntiRobbery> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: CommonNavbar(
        title: 'Anti-robbery',
        actions: [
          BorderedIconButton(
            icon: Image.asset(
              'assets/images/house.png',
              height: 16,
              width: 16,
            ),
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}