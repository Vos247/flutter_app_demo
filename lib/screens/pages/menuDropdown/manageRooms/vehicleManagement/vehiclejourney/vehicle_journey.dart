import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/VehicleManagement/vehicle_ControlCard.dart';
import 'package:flutter_app_demo/screens/component/common/background_images.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/vehicleManagement/vehiclejourney/vehicle_Itinerary.dart';
import 'package:intl/intl.dart';

class VehicleJourney extends StatefulWidget {
  const VehicleJourney({super.key});

  @override
  State<VehicleJourney> createState() => _VehicleJourneyState();
}

class _VehicleJourneyState extends State<VehicleJourney> {
  String vehicleControl = 'off';
  TextEditingController timeController = TextEditingController(
    text: 'Home now',
  );
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();

  Future<void> _selectDate(BuildContext context, bool isFrom) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: isFrom ? fromDate : toDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        if (isFrom) {
          fromDate = picked;
        } else {
          toDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy');
    return Scaffold(
      backgroundColor: Colors.white,
      // navbar gọi widget
      appBar: CommonNavbar(
        title: 'Vehicle journey',
        actions: [
          BorderedIconButton(
            icon: Image.asset('assets/images/house.png', height: 16, width: 16),
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Thẻ điều khiển xe
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(
                      child: VehicleControlCard(
                        imagePath: 'assets/images/Frame-3.png',
                        title: 'xx-xxTra_Mode',
                        gpsCode: 'GPSA 68033784',
                        groupValue: vehicleControl,
                        onChanged:
                            (value) => setState(() => vehicleControl = value!),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // nhập time
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Time', style: AppTextStyles.size10W400Black,),
                        const SizedBox(height: 8),
                        Spacer(),
                        SizedBox(
                          width: 195,
                          child: TextField(
                            controller: timeController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Form', style: AppTextStyles.size10W400Black,),
                        const SizedBox(height: 16),
                        Spacer(),
                        SizedBox(
                          width: 195,
                          child: GestureDetector(
                            onTap: () => _selectDate(context, true),
                            child: AbsorbPointer(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: dateFormat.format(toDate),
                                  suffixIcon: const Icon(Icons.calendar_today),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('To', style: AppTextStyles.size10W400Black,),
                        const SizedBox(height: 16),
                        Spacer(),
                        SizedBox(
                          width: 195,
                          child: GestureDetector(
                            onTap: () => _selectDate(context, false),
                            child: AbsorbPointer(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: dateFormat.format(toDate),
                                  suffixIcon: const Icon(Icons.calendar_today),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // To date
              const SizedBox(height: 30),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VehicleItinerary()),
                      );
                  },
                  child: SizedBox(
                    width: 174,
                    height: 42,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        gradient: LinearGradient(
                          colors: [Color(0xFF92AA00), Color(0xFFF9A11B)],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 3),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: const Text(
                        'Agree',
                        style: AppTextStyles.size16W700
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Positioned(
                child: SizedBox(
                  width: double.infinity,
                  child: BackgroundImages(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
