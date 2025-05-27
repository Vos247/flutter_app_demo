import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class AddDeviceScreen extends StatelessWidget {
  const AddDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00AA77), // Green color
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Add device',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Opacity(
              opacity: 1,
              child: Image.asset(
                'assets/images/Group-5.png', 
                height: 250,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Locate',
                  style: AppTextStyles.size10W400Black,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DeviceCard(
                      imagePath: 'assets/images/Frame-3.png',
                      label: 'Car',
                    ),
                    DeviceCard(
                      imagePath: 'assets/images/Group-6.png',
                      label: 'Motorbike',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DeviceCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const DeviceCard({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 80,
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: AppTextStyles.size10W400Black,
        ),
      ],
    );
  }
}
