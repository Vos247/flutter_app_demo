import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/addDevice/qr_scan.dart';
import 'package:get/get.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/addDevice/device_Card.dart';

class AddDeviceScreen extends StatelessWidget {
  const AddDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Add Device',
        actions: [
          BorderedIconButton(
            icon: Image.asset(
              'assets/images/Group-7.png',
              height: 17,
              width: 17,
            ),
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () => Get.to(() => const QrScanScreen()),
          ),
        ],
      ),
      body: Stack(
        children: const [
          BackgroundImages(),
          Column(
            children: [
               SizedBox(height: 20),
               Center(
                child: Text('Locate', style: AppTextStyles.size10W400Black),
              ),
               Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFE9E9E9),
                indent: 50,
                endIndent: 50,
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DeviceCard(
                      imagePath: 'assets/images/Frame-3.png',
                      label: 'Car',
                    ),
                    DeviceCard(
                      imagePath: 'assets/images/Group-6.png',
                      label: 'Motorbike',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
