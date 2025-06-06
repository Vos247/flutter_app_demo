import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/bordered_button.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VehicleItineraryMaps extends StatefulWidget {
  const VehicleItineraryMaps({super.key});

  @override
  State<VehicleItineraryMaps> createState() => _VehicleItineraryMapsState();
}

class _VehicleItineraryMapsState extends State<VehicleItineraryMaps> {
  GoogleMapController? mapController;
  bool isBoxActive = false;
  final LatLng _start = LatLng(10.7942, 106.7221); // Landmark 81
  final LatLng _end = LatLng(10.7720, 106.6983); // Chợ Bến Thành
  BitmapDescriptor? startIcon;
  BitmapDescriptor? endIcon;
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _loadCustomIcons();
  }

  // Add các marker ban đầu
  Future<void> _loadCustomIcons() async {
    final loadedStartIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/images/addressStart.png',
    );
    final loadedEndIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/images/addressEnd.png',
    );
    setState(() {
      startIcon = loadedStartIcon;
      endIcon = loadedEndIcon;
      _markers = {
        Marker(
          markerId: const MarkerId('start'),
          position: _start,
          icon: startIcon!,
        ),
        Marker(markerId: const MarkerId('end'), position: _end, icon: endIcon!),
      };
    });
  }

  void _handleMapTap(LatLng latLng) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('checkpoint_${_markers.length}'),
          position: latLng,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (startIcon == null || endIcon == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
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
      body: Stack(
        children: [
          /// Google Map
          GoogleMap(
            onMapCreated: (controller) => mapController = controller,
            initialCameraPosition: CameraPosition(target: _start, zoom: 12),
            markers: {
              Marker(
                markerId: MarkerId('start'),
                position: _start,
                icon: startIcon!,
              ),
              Marker(markerId: MarkerId('end'), position: _end, icon: endIcon!),
            },
            onTap: _handleMapTap,
            polylines: {
              Polyline(
                polylineId: PolylineId("route"),
                points: [_start, _end],
                color: Colors.blue,
                width: 4,
              ),
            },
          ),

          /// Bottom Info Box
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration:
                  isBoxActive
                      ? BoxDecoration(
                        color:
                            isBoxActive
                                ? const Color(0xFFF7FCF9)
                                : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(isBoxActive ? 30 : 20),
                          topRight: Radius.circular(isBoxActive ? 30 : 20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 15,
                            offset: const Offset(0, -2),
                          ),
                        ],
                      )
                      : BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: const Offset(0, -2),
                          ),
                        ],
                      ),
              child:
                  isBoxActive
                      ? _buildExpandedInfoBox() // Giao diện mới hoàn toàn khi active
                      : _buildNormalBox(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNormalBox() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isBoxActive = true;
                });
              },
              child: const Icon(Icons.play_arrow, color: Colors.grey),
            ),
            const Expanded(
              child: Slider(value: 0, onChanged: null, min: 0, max: 1),
            ),
            const Text("1x", style: TextStyle(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 12),
        _buildInfoRow("Speed:", "0.00 km/h"),
        _buildInfoRow("Total KM:", "13 km"),
        _buildInfoRow("Time:", "07:13 02/05/2024 - 07:19 02/05/2024"),
        const SizedBox(height: 12),
        Row(
          children: [
            Image.asset('assets/images/addressStart.png'),
            const SizedBox(width: 8),
            const Text(
              "The address starts",
              style: AppTextStyles.size10W400Black,
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Image.asset('assets/images/addressEnd.png'),
            const SizedBox(width: 8),
            const Text("Address end", style: AppTextStyles.size10W400Black),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text(label, style: AppTextStyles.size10W400Black),
          const SizedBox(width: 8),
          isLink
              ? Text(
                value,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              )
              : Text(value),
        ],
      ),
    );
  }

  Widget _buildExpandedInfoBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Header: tiêu đề + nút đóng
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isBoxActive = false;
                });
              },
              child: const Icon(Icons.close, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("The road manager:", style: AppTextStyles.size10W400Black), 
            Text("33.6 km", style: AppTextStyles.size10W400Black)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total time goes:", style: AppTextStyles.size10W400Black), 
            Text("4 hours 21 minutes", style: AppTextStyles.size10W400Black)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total time to stop:", style: AppTextStyles.size10W400Black), 
            Text("10:39", style: AppTextStyles.size10W400Black)],
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/addressStart.png',
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 8),
            const Text("Start: Landmark 81", style: AppTextStyles.size10W400Black),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Image.asset('assets/images/addressEnd.png', height: 24, width: 24),
            const SizedBox(width: 8),
            const Text("End: Bến Thành Market", style: AppTextStyles.size10W400Black),
          ],
        ),
      ],
    );
  }
}
