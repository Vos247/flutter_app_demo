import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class ControlMethodSelector extends StatelessWidget {
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const ControlMethodSelector({
    super.key,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio<String>(
            value: 'app',
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          const Text('Via app', style: AppTextStyles.size10W700Black),
          const SizedBox(width: 138),
          Radio<String>(
            value: 'sms',
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          const Text('SMS texting', style: AppTextStyles.size10W700Black),
        ],
      ),
    );
  }
}