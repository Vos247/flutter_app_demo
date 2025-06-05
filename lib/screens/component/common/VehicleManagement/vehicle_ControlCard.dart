import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class VehicleControlCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String gpsCode;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const VehicleControlCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.gpsCode,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF00C999),
          ),
        ),
        Image.asset(imagePath, width: 60, height: 29, fit: BoxFit.contain),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.size12W700Black),
              const SizedBox(height: 4),
              Text(gpsCode, style: AppTextStyles.size10W400Black),
            ],
          ),
        ),
        Row(
          children: [
            Radio<String>(
              value: 'off',
              groupValue: groupValue,
              onChanged: onChanged,
            ),
            const Text('Turn off'),
            Radio<String>(
              value: 'on',
              groupValue: groupValue,
              onChanged: onChanged,
            ),
            const Text('Turn on'),
          ],
        ),
      ],
    );
  }
}
