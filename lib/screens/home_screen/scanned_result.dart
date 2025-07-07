
import 'package:flutter/material.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';

class ResultScreen extends StatelessWidget {
  final String? qrResult;

   ResultScreen({super.key,  this.qrResult});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.BackgroundColor,
        title: const Text('Scan Result'),
      ),
      body: Center(
        child: Text(
          qrResult ?? 'No QR code scanned yet.',
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
