import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_app_demo/constants/color_palatte.dart';

class RoomMapScreen extends StatelessWidget {
  final String roomName;
  const RoomMapScreen({super.key, required this.roomName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonNavbar(
        title: 'More room',
        actions: [
          BorderedIconButton(
          icon: Icon(Icons.refresh),
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 9),
          onPressed: () {}),
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(21.028511, 105.804817),
              zoom: 15,
            ),
          ),
          Positioned(
            bottom: 24,
            right: 16,
            left: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColor60,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorPalette.primaryColor60, width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: ColorPalette.primaryColor61),
                      ),
                      VerticalDivider(width: 1, color: ColorPalette.primaryColor61),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove, color: ColorPalette.primaryColor61),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [Color(0xFF92AA00), Color(0xFFF9A11B)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Find a car',
                            style: AppTextStyles.size13W700
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.directions_car, color: ColorPalette.primaryColor61),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                    // Menu button
                    Container(
                      decoration: BoxDecoration(
                        color: ColorPalette.primaryColor60,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu, color: ColorPalette.primaryColor61),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
