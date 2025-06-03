import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class RowInput extends StatelessWidget {
  final Widget? icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const RowInput({
    super.key,
    this.icon,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null) ...[
              SizedBox(width: 24, height: 24, child: Center(child: icon)),
            ],
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: AppTextStyles.size10W400Black,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            trailing ?? const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}
