import 'package:flutter/material.dart';

class OverlayBackground extends StatelessWidget {
  final VoidCallback onTap;
  final double opacity;

  const OverlayBackground({
    super.key,
    required this.onTap,
    this.opacity = 0.4,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.black.withOpacity(opacity),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}