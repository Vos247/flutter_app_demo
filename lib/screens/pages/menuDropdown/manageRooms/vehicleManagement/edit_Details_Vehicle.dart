import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/input_options.dart';

class EditVehicle extends StatefulWidget {
  const EditVehicle({super.key});

  @override
  State<EditVehicle> createState() => _EditVehicleState();
}

class _EditVehicleState extends State<EditVehicle> {
  final TextEditingController deviceNameController = TextEditingController(
    text: '0867097479',
  );
  final TextEditingController licensePlateController = TextEditingController(
    text: 'XX-XXTra_Mode',
  );
  final TextEditingController rangeofVehicleController = TextEditingController(
    text: 'Car',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Vehicle information',
        actions: [
          BorderedIconButton(
            icon: Text('SAVE', style: AppTextStyles.size10W400),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          const BackgroundImages(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowInput(
                  title: 'Device name',
                  trailing: SizedBox(
                    width: 195,
                    height: 30,
                    child: TextField(
                      controller: deviceNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                      ),
                      style: AppTextStyles.size12W400Black,
                    ),
                  ),
                ),
                RowInput(
                  title: 'License plates',
                  trailing: SizedBox(
                    width: 195,
                    height: 30,
                    child: TextField(
                      controller: licensePlateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                      ),
                      style: AppTextStyles.size12W400Black,
                    ),
                  ),
                ),
                RowInput(
                  title: 'Range of vehicle',
                  trailing: SizedBox(
                    width: 195,
                    height: 30,
                    child: TextField(
                      controller: rangeofVehicleController,
                      enabled: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.black, width: 1.5),
                        ),
                        fillColor: Colors.grey[300],
                        filled: true,
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                      ),
                      style: AppTextStyles.size12W400Black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
