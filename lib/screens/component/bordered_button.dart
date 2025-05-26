import 'package:flutter/material.dart';
class BorderedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const BorderedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Color(0xFF4EBE99),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xFF4EBE99), width: 1),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}