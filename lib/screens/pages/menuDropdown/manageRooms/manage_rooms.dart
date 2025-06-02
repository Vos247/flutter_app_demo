
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/box.dart';
import 'package:flutter_app_demo/screens/component/common/create_Room_Button.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/more_Rooms.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/more_RoomsMap.dart';

class ManageRooms extends StatefulWidget {
  const ManageRooms({super.key});
  @override
  State<ManageRooms> createState() => _ManageRoomsState();
}
class _ManageRoomsState extends State<ManageRooms> {
  List<String> roomLabels = ['Favourite'];
  
  Future<void> _goToMoreRoom() async {
    if(roomLabels.length >= 8) return;
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MoreRoom(selectedLabel: ''),
      ),
    );
    if (result != null && result is String && result.isNotEmpty) {
      setState(() {
        roomLabels.add(result);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody:true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Manage Rooms',
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const BackgroundImages(),
            Column(
              children: [
              const SizedBox(height: 15),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                 ...roomLabels.map((label) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                  child: BoxShadowed(
                    label: label,
                    onTap: label == 'Favourite' ? null : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoomMapScreen(roomName: label) 
                          ),
                      );
                    },
                  ),
                )),
                ],
                ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 76),
                  child: CreateRoomButton(onCreate: _goToMoreRoom),
                )
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: ,
    );
  }
}
