import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/box.dart';
import 'package:flutter_app_demo/screens/component/common/create_Room_Button.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/component/common/suggest_box.dart';

class MoreRoom extends StatefulWidget {
  const MoreRoom({super.key, required this.selectedLabel});
  final String selectedLabel;

  @override
  State<MoreRoom> createState() => _MoreRoomState();
}

class _MoreRoomState extends State<MoreRoom> {
  String selectedLabel = 'Enter room name (+)';
  bool editable = true;

  void updateLabel(String label) {
    setState(() {
      selectedLabel = label;
    });
  }

  void saveRoom() {
    setState(() {
      editable = false;
    });
    Navigator.pop(context, selectedLabel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'More Rooms',
        actions: [
          BorderedIconButton(
            icon: Text('Save', style: AppTextStyles.size10W400),
            onPressed: saveRoom,
          ),
        ],
      ),
      body: Stack(
        children: [
          const BackgroundImages(),
          SafeArea(
            child: Column(
               children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: BoxShadowed(
                  editable: editable,
                  label: selectedLabel,
                  onChanged: updateLabel,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SuggestBox(onSelect: updateLabel),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 76),
                child: CreateRoomButton(
                  onCreate: () {
                    Navigator.pop(context, selectedLabel);
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
            )
          ),
        ],
      ),
    );
  }
}
