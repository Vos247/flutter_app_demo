import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/empty_data.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';

class SafeAreaScreen extends StatefulWidget{
  const SafeAreaScreen({super.key});

  @override
  State<SafeAreaScreen> createState() => _SafeAreaScreenState();
}
class _SafeAreaScreenState extends State<SafeAreaScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: CommonNavbar(
        title: 'Safe area',
        actions: [
          BorderedIconButton(
            icon: Image.asset(
              'assets/images/cong.png',
              height: 16,
              width: 16,
            ),
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {},
          ),
        ],
      ),
      body: const EmptyDataWidget(),
    );
  }
}