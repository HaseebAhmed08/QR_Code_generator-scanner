// import 'package:flutter/widgets.dart';

// class Genertor_QR_logic extends ChangeNotifier {
//   TextEditingController generateCodeController = TextEditingController();

//   void update() {
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';

class GenerateQrLogic extends ChangeNotifier {
  TextEditingController generateCodeController = TextEditingController();

  GenerateQrLogic() {
    // Automatically notify UI when text changes
    generateCodeController.addListener(() {
      notifyListeners();
    });
  }

  // If you still want a manual trigger (optional)
  void update() {
    notifyListeners();
  }

  @override
  void dispose() {
    generateCodeController.dispose();
    super.dispose();
  }

  void navigateToGenerat_screen(BuildContext context) {
    Navigator.pushNamed(context, '/generate_qr_code_screen');
    notifyListeners();
  }
}

// navigateToGenerat_screen
