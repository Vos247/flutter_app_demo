import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/input_options.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/edit_Details_Vehicle.dart';


class DetailVehicle extends StatelessWidget{
  const DetailVehicle({super.key});
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonNavbar(
        title: 'Details',
        actions: [
          BorderedIconButton(
            icon: Text('Edit', style: AppTextStyles.size10W400),
            onPressed: () {
              Navigator.push(context,
            MaterialPageRoute(builder: (context) => EditVehicle()),
            );
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          RowInput( 
            title: ('Device name'),
            trailing: Text('0964328322', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Serial'),
            trailing: Text('GPSA 68033784', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Boxld'),
            trailing: Text('60530798', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Boss phone number'),
            trailing: Text('0385632557', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Vehicle owners phone number'),
            trailing: Text('0857097479', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Firmware version'),
            trailing: Text('321', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Virbration sensor'),
            trailing: Text('Have', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Mobile signal'),
            trailing: Text('-67 dBm', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('GPS signal'),
            trailing: Text('Very good', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Device installation direction'),
            trailing: Text('495,-138,-120', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Activation state'),
            trailing: Text('Activated', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Vehicle status'),
            trailing: Text('Walking', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('ACC'),
            trailing: Text('Turn on', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('GPS time'),
            trailing: Text('15:00 - May 2, 2024', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Update time'),
            trailing: Text('15:00 - May 2, 2024', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Speed'),
            trailing: Text('30Km/h', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Address'),
            trailing: Text('Dang Nguyen Can,Ward 13, District...', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Warranty expiration date'),
            trailing: Text('October 28, 2025', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('SIM service expiration date'),
            trailing: Text('October 28, 2024', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Vehicle gear change'),
            trailing: Text('xx-xxTra_Mode', style: AppTextStyles.size10W400Black,),
            ),
            RowInput( 
            title: ('Driver name'),
            trailing: Text('0867097479', style: AppTextStyles.size10W400Black,),
            ),
        ],
      )
      );
  }
}