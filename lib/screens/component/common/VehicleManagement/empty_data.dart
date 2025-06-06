import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class EmptyDataWidget extends StatelessWidget {
  final String text;
  final String imagePath;
  final double imageHeight;
  final double imageWidth;

  const EmptyDataWidget({
    super.key,
    this.text = 'no data',
    this.imagePath = 'assets/images/Safe-Areas.png',
    this.imageHeight = 129,
    this.imageWidth = 148,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 1,
            child: Image.asset(imagePath, height: imageHeight, width: imageWidth),
          ),
          const SizedBox(height: 16),
          Text(text, style: AppTextStyles.size10W700Grey),
        ],
      ),
    );
  }
}