
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qrcodereader/screens/home_screen/scan_qr_code_screen.dart';

class ScanQrCodeLogic extends ChangeNotifier {
  void navigateToScanScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ScanScreen()),
    );
  }

 String? _qrResult;

  String? get qrResult => _qrResult;

  void setResult(String result) {
    _qrResult = result;
    notifyListeners();
  }

  void clearResult() {
    _qrResult = null;
    notifyListeners();
  }


  String detectType(String data) {
  if (data.startsWith('http://') || data.startsWith('https://')) {
    return 'URL';
  } else if (data.startsWith('mailto:') || data.contains('@')) {
    return 'Email';
  } else if (data.startsWith('tel:')) {
    return 'Phone';
  } else if (data.startsWith('WIFI:')) {
    return 'WiFi';
  } else {
    return 'Text';
  }
}



Map<String, String> parseWiFi(String data) {
  final Map<String, String> wifiInfo = {};
  if (!data.startsWith('WIFI:')) return wifiInfo;

  data = data.replaceFirst('WIFI:', '').replaceAll(';;', '');
  final parts = data.split(';');

  for (var part in parts) {
    if (part.isEmpty) continue;
    final kv = part.split(':');
    if (kv.length >= 2) {
      wifiInfo[kv[0]] = kv.sublist(1).join(':');
    }
  }

  return wifiInfo;
}

 
}
