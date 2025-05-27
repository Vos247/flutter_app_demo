import 'package:flutter/material.dart';
class BorderedIconButton extends StatelessWidget {
  final Widget icon;
  final double iconSize;
  final Color iconColor;
  final double borderWidth;
  final EdgeInsetsGeometry padding;
  final VoidCallback onPressed;

  const BorderedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconSize = 20,
    this.borderWidth = 0.5,
    this.padding = const EdgeInsets.all(2),
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Color(0xFF4EBE99),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xFF4EBE99), width: borderWidth),
      ),
      child: IconButton(
        icon: icon,
        color: iconColor,
        onPressed: onPressed,
        splashRadius: 12,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
    );
  }
}