import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/vehicle_ControlCard.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class AntiTheft extends StatefulWidget {
  const AntiTheft({super.key});
  @override
  State<AntiTheft> createState() => _AntiTheftState();
}

class _AntiTheftState extends State<AntiTheft> {
  String vehicleControl = 'off';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Anti-theft',
        actions: [
          BorderedIconButton(
            icon: Image.asset('assets/images/house.png', height: 16, width: 16),
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          const BackgroundImages(),
          ListView(
            padding: EdgeInsets.all(16),
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(
                      child: VehicleControlCard(
                        imagePath: 'assets/images/Frame-3.png',
                        title: 'xx-xxTra_Mode',
                        gpsCode: 'GPSA 68033784',
                        groupValue: vehicleControl,
                        onChanged:
                            (value) => setState(() => vehicleControl = value!),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text('When anti -theft is turned on, you will receive a warning about the status of the car when Unlock, turn off the car lock.', style: AppTextStyles.size10W700Grey,)
            ],
          )
        ],
      )
    );
  }
}
