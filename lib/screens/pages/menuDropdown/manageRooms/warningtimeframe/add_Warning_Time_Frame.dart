import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class AddWarningTimeFrame extends StatefulWidget{
  const AddWarningTimeFrame({super.key});
  @override

  State<AddWarningTimeFrame> createState() => _AddWarningTimeFrameState();
}
class _AddWarningTimeFrameState extends State<AddWarningTimeFrame>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: CommonNavbar(
        title: 'Add warning time frame',
       actions: [
          BorderedIconButton(
            icon: Text('Save', style: AppTextStyles.size10W400),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}