
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:flutter_app_demo/screens/pages/menuDropdown/manageRooms/Vehicle_management.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_app_demo/constants/color_palatte.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoomMapScreen extends StatefulWidget {
  final String roomName;
  const RoomMapScreen({super.key, required this.roomName});
  @override
  State<RoomMapScreen> createState() => _RoomMapScreenState();
}

class _RoomMapScreenState extends State<RoomMapScreen> {
  LatLng? _currentPosition;
  LatLng? _selectedPosition;
  final Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    _ensureLocationPermission();
    _getCurrentLocation();
    _loadSavedLocation();
  }
  Future<bool> _ensureLocationPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if(!serviceEnabled){
    await Geolocator.openLocationSettings();
    return false;
  }
  LocationPermission permission = await Geolocator.checkPermission();
  if(permission == LocationPermission.denied){
    permission = await Geolocator.requestPermission();
    if(permission == LocationPermission.denied){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You need permission location on this phone.'))
      );
      return false;
    }
  }
  if(permission == LocationPermission.deniedForever){
    await Geolocator.openAppSettings();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('You are decline permission location!'))
    );
    return false;
  }
  return true;
  }
  Future<void> _loadSavedLocation() async {
    final prefs = await SharedPreferences.getInstance();
    final double? lat = prefs.getDouble('saved_lat');
    final double? lng = prefs.getDouble('saved_lng');
    if(lat != null && lng != null) {
      setState(() {
        _selectedPosition = LatLng(lat, lng);
      });
    } else {
      setState(() {
        _selectedPosition = null;
      });
    }
  }
  Future<void> _saveLocation(LatLng tappedPoint) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('room_${widget.roomName}_lat', tappedPoint.latitude);
  await prefs.setDouble('room_${widget.roomName}_lng', tappedPoint.longitude);
}
  Future<void> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission = await Geolocator.checkPermission();
    if (!serviceEnabled || permission == LocationPermission.denied){
      _currentPosition = const LatLng(10.7769, 106.7009);
    } 
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
    });

    final controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newLatLngZoom(_currentPosition!, 16),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonNavbar(
        title: 'More room',
        actions: [
          BorderedIconButton(
            icon: Icon(Icons.refresh),
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 9),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _currentPosition ?? LatLng(10.7769, 106.7009),
              zoom: 15,
            ),
            onTap: (LatLng tappedPoint) async {
              bool hasPermission = await _ensureLocationPermission();
              if(!hasPermission) return;
              setState(() {
                _selectedPosition = tappedPoint;
              });
              final prefs = await SharedPreferences.getInstance();
              await prefs.setDouble('saved_lat', tappedPoint.latitude);
              await prefs.setDouble('saved_lng', tappedPoint.longitude);
              await _saveLocation(tappedPoint);
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(content: Text('Saved location at (${tappedPoint.latitude}, ${tappedPoint.longitude})')),
              // );
            },
            markers: {
              if(_currentPosition != null)
                Marker(
                  markerId: MarkerId('current_location'),
                  position: _currentPosition!,
                  infoWindow: InfoWindow(title: 'VN'),
                ),
              if(_selectedPosition != null)
                Marker(
                  markerId: MarkerId('selected_location'),
                  position: _selectedPosition!,
                  infoWindow: InfoWindow(title: 'Selected Location'),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
                ),
            }
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
                    border: Border.all(
                      color: ColorPalette.primaryColor60,
                      width: 1.5,
                    ),
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
                        icon: Icon(
                          Icons.add,
                          color: ColorPalette.primaryColor61,
                        ),
                      ),
                      VerticalDivider(
                        width: 1,
                        color: ColorPalette.primaryColor61,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          color: ColorPalette.primaryColor61,
                        ),
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
                          Text('Find a car', style: AppTextStyles.size13W700),
                          SizedBox(width: 8),
                          Icon(
                            Icons.directions_car,
                            color: ColorPalette.primaryColor61,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
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
                        onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VehicleManagement() 
                          ),
                      );
                        },
                        icon: Icon(
                          Icons.menu,
                          color: ColorPalette.primaryColor61,
                        ),
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
