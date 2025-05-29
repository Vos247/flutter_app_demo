import 'package:flutter/material.dart';

class BorderedContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final VoidCallback? onTap;

  const BorderedContainer({
    super.key,
    required this.child,
    this.color = const Color(0xFF4EBE99),
    this.borderRadius = 5,
    this.borderWidth = 0.5,
    this.borderColor = const Color(0xFF4EBE99),
    this.padding = const EdgeInsets.all(1),
    this.margin = const EdgeInsets.symmetric(horizontal: 4),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final content = Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: child,
    );
    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: content);
    }
    return content;
  }
}

// Sử dụng cho icon button:
class BorderedIconButton extends StatelessWidget {
  final Widget icon;
  final double iconSize;
  final Color iconColor;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;

  const BorderedIconButton({
    super.key,
    required this.icon,
    this.iconSize = 20,
    this.iconColor = Colors.white,
    this.padding = const EdgeInsets.all(8), // Thêm mặc định padding
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BorderedContainer(
      onTap: onPressed,
      padding: padding, // Truyền padding xuống
      child: IconTheme(
        data: IconThemeData(
          size: iconSize,
          color: iconColor,
        ),
        child: icon,
      ),
    );
  }
}