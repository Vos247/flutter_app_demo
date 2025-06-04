import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.grey[200],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF00C999),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                ),
                Image.asset(
                  'assets/images/Frame-3.png', 
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 12),
                // Text section
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'xx-xxTra_Mode',
                        style: AppTextStyles.size12W700Black
                      ),
                      SizedBox(height: 4),
                      Text(
                        'GPSA 68033784',
                        style: AppTextStyles.size10W400Black
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Walking',
                  style: AppTextStyles.size10W400Green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}