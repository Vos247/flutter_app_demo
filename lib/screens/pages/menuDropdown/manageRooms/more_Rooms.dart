import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/box.dart';
import 'package:flutter_app_demo/screens/component/common/create_Room_Button.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/component/common/suggest_box.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoreRoom extends StatefulWidget {
  const MoreRoom({super.key, required this.selectedLabel});
  final String selectedLabel;

  @override
  State<MoreRoom> createState() => _MoreRoomState();
}

class _MoreRoomState extends State<MoreRoom> {
  String selectedLabel = 'Enter room name (+)';
  bool editable = true;
  bool showCreateButton = true;
  void updateLabel(String label) {
    setState(() {
      selectedLabel = label;
    });
  }
  Future<bool> _ensureLocationPermission(BuildContext context) async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return false;
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You need permission location on this phone.'))
        );
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever){
      await Geolocator.openAppSettings();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You need permission location on setting to use maps !'))
      );
      return false;
    }
    return true;
  }  
  void saveRoom() async {
    setState(() {
      editable = false;
    });
    final prefs = await SharedPreferences.getInstance();
  await prefs.remove('room_${selectedLabel}_lat');
  await prefs.remove('room_${selectedLabel}_lng');
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
                  onTap: () {
                   setState(() {
                     showCreateButton = false;
                   });
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SuggestBox(onSelect: updateLabel),
                ),
              ),
              if(showCreateButton)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 76),
                child: CreateRoomButton(
                  onCreate: () async {
                    bool hasPermission = await _ensureLocationPermission(context);
                    if(!hasPermission) return;
                    if(selectedLabel.isEmpty || selectedLabel == 'Enter room name (+)') return;
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


