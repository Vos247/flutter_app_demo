import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({super.key, required this.onCreate});
  final VoidCallback onCreate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCreate,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF92AA00), Color(0xFFF9A11B)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(23.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Create new room', style: AppTextStyles.size13W700),
            BorderedIconButton(padding: EdgeInsets.all(1),icon: Icon(Icons.add), iconSize: 30, ),   
          ],
        ),
      ),
    );
  }
}
