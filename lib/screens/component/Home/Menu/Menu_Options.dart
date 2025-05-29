import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowcaseMenu extends StatefulWidget {
  final BuildContext showcaseMenu;
  const ShowcaseMenu({super.key, required this.showcaseMenu});

  @override
  State<ShowcaseMenu> createState() => _ShowcaseMenuState();
}

class _ShowcaseMenuState extends State<ShowcaseMenu> {
  void _dismissShowcase() {
    ShowCaseWidget.of(widget.showcaseMenu).dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildItem(
            'unfavorite',
            'Unfavorite',
            BorderedIconButton(
              icon: Image.asset(
                'assets/images/IconFavorites.png',
                height: 13,
                width: 13,
              ),
              onPressed: () {
                _dismissShowcase();
              },
            ),
          ),
          const Divider(height: 5),
          _buildItem(
            'see_more',
            'See More',
            BorderedIconButton(
              icon: Image.asset(
                'assets/images/iconBrush.png',
                height: 13,
                width: 13,
              ),
              onPressed: () {},
            ),
          ),
          const Divider(height: 5),
          _buildItem(
            'move',
            'Move',
            BorderedIconButton(
              icon: Image.asset(
                'assets/images/iconMove.png',
                height: 13,
                width: 13,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildItem(String value, String label, Widget icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Expanded(child: Text(label, style: AppTextStyles.size10W400Black)),
          BorderedIconButton(
            padding: const EdgeInsets.all(1),
            icon: icon,
            iconSize: 30,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}