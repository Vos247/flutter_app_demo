import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/control_Method_Selector.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/vehicle_ControlCard.dart';

class AntiRobbery extends StatefulWidget {
  const AntiRobbery({super.key});

  @override
  State<AntiRobbery> createState() => _AntiRobberyState();
}

class _AntiRobberyState extends State<AntiRobbery> {
  String controlMethod = 'app';
  String vehicleControl = 'off';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Anti-robbery',
        actions: [
          BorderedIconButton(
            icon: Image.asset('assets/images/house.png', height: 16, width: 16),
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Choose the control method',
            style: AppTextStyles.size10W400Black,
          ),
          const SizedBox(height: 10),
         ControlMethodSelector(
          groupValue: controlMethod, 
          onChanged: (value) => setState(()=> controlMethod = value!)
          ),
          const SizedBox(height: 20),
          const Text(
            'Choose the control method',
            style: AppTextStyles.size10W400Black,
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 12),
                Expanded(
                  child: VehicleControlCard(
                    imagePath: 'assets/images/Frame-3.png',
                    title: 'xx-xxTra_Mode',
                    gpsCode: 'GPSA 68033784',
                    groupValue: vehicleControl,
                    onChanged: (value) => setState(() => vehicleControl = value!),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text('Note:', style: AppTextStyles.size10W400Black),
          const SizedBox(height: 8),
          const Text(
            '• If you select "power off", anti-hijack mode will be turned on',
            style: AppTextStyles.size10W400Black,
          ),
          const Text(
            'Do not allow the vehicle to be unlocked.',
            style: AppTextStyles.size10W400Black,
          ),
          const SizedBox(height: 4),
          const Text(
            '• If you select "Power On", the anti-hijacking mode will be turned off,',
            style: AppTextStyles.size10W400Black,
          ),
          const Text(
            '   and the vehicle will also turn off',
            style: AppTextStyles.size10W400Black,
          ),
          const SizedBox(height: 4),
          const Text(
            'Turn off/on normally.',
            style: AppTextStyles.size10W400Black,
          ),
        ],
      ),
    );
  }
}
