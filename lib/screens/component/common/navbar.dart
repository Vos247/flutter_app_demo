import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:get/get.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class CommonNavbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final bool showBack;
  final Gradient? gradient;
  final Color? backgroundColor;

  const CommonNavbar({
    super.key,
    required this.title,
    this.actions = const [],
    this.showBack = true,
    this.gradient,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: statusBarHeight,
          color: backgroundColor ?? const Color(0xFF00AA77),
        ),
        // Main app bar
        Container(
          height: kToolbarHeight,
          decoration: BoxDecoration(
            gradient: gradient,
            color: gradient == null ? backgroundColor ?? const Color(0xFFFFFFFF) : null,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4.0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Back button
              if (showBack)
                BorderedIconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Get.back(),
                )
              else
                const SizedBox(width: 48), // Placeholder để center title
              // Title
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyles.size11W700Green,
                  textAlign: TextAlign.center,
                ),
              ),
              // Actions
              Row(
                mainAxisSize: MainAxisSize.min,
                children: actions,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    // Tính toán chiều cao thực tế bao gồm cả status bar
    return Size.fromHeight(kToolbarHeight + WidgetsBinding.instance.window.padding.top / WidgetsBinding.instance.window.devicePixelRatio);
  }
}