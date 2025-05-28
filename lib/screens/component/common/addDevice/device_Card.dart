import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
class DeviceCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const DeviceCard({super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, height: 80),
        const SizedBox(height: 10),
        Text(label, style: AppTextStyles.size10W400Black),
      ],
    );
  }
}