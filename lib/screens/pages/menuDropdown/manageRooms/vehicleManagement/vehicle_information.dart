import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/input_options.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/vehicleCard.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/vehicleManagement/anti_robbery.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/vehicleManagement/current_location.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/vehicleManagement/detail_Vehicle.dart';

class VehicleInformation extends StatefulWidget{
  const VehicleInformation({super.key});
  @override
  State<VehicleInformation> createState() => _VehicleInformationState();
}
class _VehicleInformationState extends State<VehicleInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: CommonNavbar(
        title: 'Vehicle Information',
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          VehicleCard(),
          RowInput(icon: Image.asset('assets/images/VehicleInformation.png',width: 19,height: 18), 
          title: ('Details'),
          onTap: () => {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailVehicle()),
            )
          },
          ),
          RowInput(icon: Image.asset('assets/images/currentLocation.png',width: 22,height: 25), 
          title: ('Current location of the vehicle'),
          onTap: () => {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => CurrentLocation()),
            )
          },
          ),
          RowInput(icon: Image.asset('assets/images/Anticheat.png',width: 14,height: 17), 
          title: ('Anti-hacking(Remote On/Off)'),
          onTap: () => {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => AntiRobbery()),
            )
          },
          ),
          RowInput(icon: 
          Image.asset('assets/images/voltage.png',width: 17,height: 17), 
          title: ('Voltage'),
          trailing: Text('16.6V', style: AppTextStyles.size12W400Black,),
          onTap: () => {},
          ),
        ],
      ),
    );
  }
}