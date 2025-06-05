import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/vehicleManagement/vehicle_information.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/input_options.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/vehicleManagement/vehiclejourney/vehicle_journey.dart';
class VehicleManagement extends StatefulWidget{
  const VehicleManagement({super.key});
  @override
  State<VehicleManagement> createState() => _VehicleManagementState();
}
class _VehicleManagementState extends State<VehicleManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: ListView(
        children: [
          RowInput(icon: Image.asset('assets/images/VehicleInformation.png',width: 19,height: 18), 
          title: ('Vehicle information'),
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => VehicleInformation()),
            );
          },
          ),
          RowInput(icon: Image.asset('assets/images/Vehiclejourney.png',width: 22,height: 25), 
          title: ('Vehicle journey'),
          onTap: () => {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => VehicleJourney()),
            )
          },
          ),
          RowInput(icon: Image.asset('assets/images/Anticheat.png',width: 14,height: 17), 
          title: ('Anti-theft(Turn off/On remotely)'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/Antitheft.png',width: 17,height: 17), 
          title: ('Anti-theft'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/findCar.png',width: 18,height: 18), 
          title: ('Find a car'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/SafeArea.png', width: 16, height: 24), 
          title: ('Safe Area'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/Crazypressure.png',width: 17,height: 17), 
          title: ('Crazy Pressure'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/Warningtime.png',width: 19,height: 21,), 
          title: ('Warning time frame'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/SetupAlerts.png',width: 17,height: 14.5,), 
          title: ('Set up alerts'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/Conditioning.png',width: 22,height: 22,), 
          title: ('Conditioning'),
          onTap: () => {},
          ),
          RowInput(icon: Image.asset('assets/images/informationService.png',width: 17,height: 17,), 
          title: ('Information Services'),
          onTap: () => {},
          ),
        ],
      ),
    );
  }
}