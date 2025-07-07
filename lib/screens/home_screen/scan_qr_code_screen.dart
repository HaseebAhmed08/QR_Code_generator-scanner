import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/screens/home_screen/scanned_result.dart';
import 'package:qrcodereader/view_modal/home_logic/scan_qr_logic.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan')),
      body: MobileScanner(
        onDetect: (capture) {
          final barcode = capture.barcodes.first;
          if (barcode.rawValue != null) {
            context.read<ScanQrCodeLogic>().setResult(barcode.rawValue!);

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => ResultScreen(qrResult: barcode.rawValue!)),
            );
          }
        },
      ),
    );
  }
}
