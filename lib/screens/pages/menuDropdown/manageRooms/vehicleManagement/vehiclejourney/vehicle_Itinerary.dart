import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';

class VehicleItinerary extends StatelessWidget {
  const VehicleItinerary ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CommonNavbar(
        title: 'Vehicle itinerary xx-xxTra_Mode',
        actions: [
          BorderedIconButton(
            icon: Image.asset('assets/images/house.png', height: 16, width: 16),
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: [
            _buildRouteInfoCard(),
          _buildSeeItineraryButton(),
          Expanded(child: _buildItineraryList()),
      ],
      )
    );
  }
  Widget _buildRouteInfoCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        boxShadow: [BoxShadow(color: Colors.white, blurRadius: 4)],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("General manager of the route"),
              Text("33.6 Km"),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Time"),
              Text("4 hours 21 minutes"),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Total dwell time"),
              Text("10:39 a.m"),
            ],
          ),
        ],
      ),
    );
  }

Widget _buildSeeItineraryButton() {
  return Container(
    width: 243,
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF92AA00), Color(0xFFF9A11B)],
      ),
      borderRadius: BorderRadius.circular(50),
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: StadiumBorder(),
        backgroundColor: Colors.transparent, // cần để nền trong suốt
        shadowColor: Colors.transparent, // để không chồng đổ bóng
      ),
      onPressed: () {},
      child: Center(
        child: Text(
          "See total itinerary",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    ),
  );
}
  Widget _buildItineraryList() {
    return ListView.separated(
      itemCount: 3,
      itemBuilder: (context, index) {
        return _buildItineraryItem();
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
  Widget _buildItineraryItem() {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.location_on, color: Colors.green),
          SizedBox(height: 4),
          Icon(Icons.location_on, color: Colors.pink),
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("07:13 - 02/05/2024"),
          Text("07:13 - 02/05/2024"),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Total: 13.2 km"),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
      onTap: () {},
    );
  }
}