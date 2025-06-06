import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/input_options.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class AddWarningTimeFrame extends StatefulWidget{
  const AddWarningTimeFrame({super.key});
  @override

  State<AddWarningTimeFrame> createState() => _AddWarningTimeFrameState();
}
class _AddWarningTimeFrameState extends State<AddWarningTimeFrame>{
  TimeOfDay startTime = const TimeOfDay(hour: 15, minute: 0);
  TimeOfDay endTime = const TimeOfDay(hour: 15, minute: 30);
  bool isEffectOn = false;

  Future<void> _pickTime(BuildContext context, bool isStart) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: isStart ? startTime : endTime,
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
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
      body: Stack(
        children: [
        const BackgroundImages(),
        Column(children: [
            RowInput(
            title: 'Start',
            trailing: Text(_formatTime(startTime)),
            onTap: () => _pickTime(context, true),
            ),
            RowInput(
              title: 'End',
              trailing: Text(_formatTime(endTime)),
              onTap: () => _pickTime(context, false),
            ),
            RowInput(
              title: 'Effect',
              trailing: GestureDetector(
                onTap: () => setState(()=> isEffectOn = !isEffectOn),
                child: Image.asset(
                  isEffectOn 
                  ? 'assets/images/toggleOn.png'
                  : 'assets/images/toggleOff.png',
                  height: 24,
                ),
              ),  
          ),
        ],
        ),
        ],
      ),
    );
  }
}