import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/component/overlay_background.dart';
import 'package:showcaseview/showcaseview.dart';

class MenuOptions extends StatefulWidget {
  final void Function(String) onSelected;
  final GlobalKey? showcaseKey;

  const MenuOptions({super.key, required this.onSelected, this.showcaseKey});

  @override
  State<MenuOptions> createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {
  OverlayEntry? _overlayEntry;
  final GlobalKey _iconKey = GlobalKey();
  void _showOverlayMenu() {
    final RenderBox renderBox =
        _iconKey.currentContext!.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;
    _overlayEntry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              OverlayBackground(onTap: _removeOverlay),
              Positioned(
                top: offset.dy + size.height, // ngay dưới nút
                left: offset.dx,
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: SizedBox(
                    width: 180,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                         _buildItem(
                          'unfavorite',
                          'Unfavorite',
                          BorderedIconButton(
                            icon: Image.asset(
                              'assets/images/iconFavorites.png',
                              height: 13,
                              width: 13,
                            ),
                            onPressed: () {},
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
                  ),
                ),
              ),
            ],
          ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  Widget _buildItem(String value, String label, Widget icon) {
    return GestureDetector(
      onTap: () {
        widget.onSelected(value);
        _removeOverlay();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            Expanded(child: Text(label, style: AppTextStyles.size10W400Black)),
            SizedBox(
              width: 50,
              height: 50,
             child: BorderedIconButton(
              icon: icon,
              iconSize: 13,
              borderWidth: 0.5,
              padding: const EdgeInsets.all(0),
              onPressed: () {},
            ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final menuButton = GestureDetector(
      key: _iconKey,
      onTap: _showOverlayMenu,
      child:
          widget.showcaseKey != null
              ? Showcase(
                key: widget.showcaseKey!,
                description: 'Click to see more options',
                child: const Icon(Icons.more_vert, color: Colors.grey),
              )
              : const Icon(Icons.more_vert, color: Colors.grey),
    );
    return menuButton;
  }
}
