import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/common/navbar.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
class QrScanScreen extends StatefulWidget{
  const QrScanScreen({super.key});

  @override
  State<QrScanScreen> createState() => _QrScanScreenState();
}
  class _QrScanScreenState extends State<QrScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CommonNavbar(
        title: 'Scan the QR Code',
        showBack: true,
      ),
      body: Stack(
        children: [
          MobileScanner(
            onDetect: (BarcodeCapture capture) {
              final List<Barcode> barcodes = capture.barcodes;
              if(barcodes.isNotEmpty) {
                final String code = barcodes.first.rawValue ?? '';
                // Handle the scanned QR code
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Scanned QR Code: $code')),
                );
              }
            },
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4.0,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Text('Scan QR Code', style: AppTextStyles.size10W400),
              ),
            )
        ]
      ),
    );
  }
  }