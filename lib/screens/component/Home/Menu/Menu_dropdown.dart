import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_app_demo/screens/component/overlay_background.dart';
import 'package:get/get.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/addDevice/add_device.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/manage_rooms.dart';

class MenuDropdown extends StatefulWidget {
  final void Function(String) onSelected;

  const MenuDropdown({
    super.key, 
    required this.onSelected});

  @override
  State<MenuDropdown> createState() => _MenuDropdownState();
}

class _MenuDropdownState extends State<MenuDropdown> {
  final GlobalKey _menuKey = GlobalKey();
  final GlobalKey _iconPositionKey = GlobalKey();
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ShowCaseWidget.of(context).startShowCase([_menuKey]);
      }
    });
  }
  void _showOverlayMenu() {
    final renderBox =
        _iconPositionKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;
    _overlayEntry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              OverlayBackground(onTap: _removeOverlay),
              Positioned(
                top: offset.dy + size.height,
                right: 16, // điều chỉnh theo layout
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: SizedBox(
                    width: 200, // chiều rộng của menu
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildItem(
                          'add',
                          'Add Device',
                          BorderedIconButton(
                            icon: Icon(Icons.add, size: 13),
                            iconSize: 13, 
                            onPressed: () {
                              _removeOverlay();
                              Get.to(() => const AddDeviceScreen());}
                            ),
                        ),
                        const Divider(height: 5, color: Colors.grey),
                        _buildItem(
                          'edit',
                          'Manage Rooms', 
                          BorderedIconButton(
                            icon: Image.asset(
                              'assets/images/group-3.png',
                              height: 13,
                              width: 13,
                            ),
                            onPressed: () {
                              _removeOverlay();
                              Get.to(()=> const ManageRooms());},
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
    ShowCaseWidget.of(context).dismiss();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  Widget _buildItem(String value, String label, Widget iconWidget) {
    return InkWell(
      onTap: () {
        widget.onSelected(value);
        _removeOverlay();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(children: [
          Expanded(child: 
          Align(alignment: Alignment.centerLeft,
          child: Text(label, style: const TextStyle(color: Colors.black, fontSize: 16)
          ),
          ),
          ),
          iconWidget,
        ],
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: _menuKey, // key được gán cho Showcase
      title: 'Quick Menu',
      description: 'Tap to open the quick menu',
      child: GestureDetector(
        key: _iconPositionKey, // dùng key này cho tính toán vị trí dropdown
        onTap: _showOverlayMenu,
        child: const Icon(Icons.menu, color: Colors.white),
      ),
    );
  }
}
