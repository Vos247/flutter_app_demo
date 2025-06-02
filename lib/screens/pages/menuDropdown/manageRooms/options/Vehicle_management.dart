import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
class VehicleManagement extends StatefulWidget{
  const VehicleManagement({super.key});
  @override
  State<VehicleManagement> createState() => _VehicleManagementState();
}
class _VehicleManagementState extends State<VehicleManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CommonNavbar(
        title: 'Vehicle management',
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