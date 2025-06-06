import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/empty_data.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/warningtimeframe/add_Warning_Time_Frame.dart';

class WarningTimeFrame extends StatefulWidget {
  const WarningTimeFrame({super.key});
  @override
  State<WarningTimeFrame> createState() => _WarningTimeFrameState();
}

class _WarningTimeFrameState extends State<WarningTimeFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Warning time frame',
        actions: [
          BorderedIconButton(
            icon: Image.asset('assets/images/cong.png', height: 16, width: 16),
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddWarningTimeFrame()),
              );
            },
          ),
        ],
      ),
      body: const EmptyDataWidget(),
    );
  }
}
