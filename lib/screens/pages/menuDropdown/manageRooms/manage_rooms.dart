import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/box.dart';
import 'package:flutter_app_demo/screens/component/common/create_Room_Button.dart';

class ManageRooms extends StatelessWidget {
  const ManageRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Manage Rooms',
      ),
      body: Stack(
        children: const [
          BackgroundImages(),
          Column(
            children: [
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: BoxShadowed(
                  label: 'Favourite',
                  ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.fromLTRB(96, 0, 96, 20),
        child: CreateRoomButton(),
        ),
    );
  }
}
