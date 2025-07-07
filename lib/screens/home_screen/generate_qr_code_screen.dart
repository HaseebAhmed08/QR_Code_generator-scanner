// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:qrcodereader/utils/appcolors/app_colors.dart';
// import 'package:qrcodereader/view_modal/home_logic/generate_Qr_logic.dart';

// class Generate_Qr_Code extends StatefulWidget {
//   const Generate_Qr_Code({super.key});

//   @override
//   State<Generate_Qr_Code> createState() => _Generate_Qr_CodeState();
// }

// class _Generate_Qr_CodeState extends State<Generate_Qr_Code> {
//   late final GenerateQrLogic genertor_qr_logic;

//   @override
//   void initState() {
//     super.initState();
//     genertor_qr_logic = Provider.of<GenerateQrLogic>(context, listen: false);
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.BackgroundColor,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           genertor_qr_logic.generateCodeController.text.isEmpty
//               ? Consumer<GenerateQrLogic>(
//                   builder: (context, value, child) {
//                     return Container();
//                   },
//                 )
//               : Consumer<GenerateQrLogic>(
//                   builder: (context, value, child) {
//                     return QrImageView(
//                       data: value.generateCodeController.text,
//                       version: QrVersions.auto,
//                       size: 200.0,
//                     );
//                   },
//                 ),

//           Padding(
//             padding: const EdgeInsets.all(28.0),
//             child: Consumer<GenerateQrLogic>(
//               builder: (context, value, child) {
//                 return TextField(
//                   controller: value.generateCodeController,
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                     hintText: "Enter Value to generate QR Code",
//                     hintStyle: TextStyle(color: Colors.white70),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Consumer<GenerateQrLogic>(
//             builder: (context, value, child) {
//               return GestureDetector(
//                 onTap: () {
//                   value.update();
//                 },
//                 child: Container(
//                   height: 40.h,
//                   width: 240.w,
//                   decoration: BoxDecoration(
//                     color: AppColors.ButtonColor,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Row(
//                     // Changed from spaceEvenly
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,

//                     children: [
//                       // SizedBox(width: 30.w,),
//                       Text(
//                         "Generate QR",
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           color: AppColors.BackgroundColor,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: 'Itim',
//                           fontSize: 16.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),

         
//         ],
//       ),
//     );
//   }
// }






// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:provider/provider.dart';

// // import 'package:qrcodereader/screens/home_screen/widgets/custum_button.dart';
// // import 'package:qrcodereader/utils/appcolors/app_colors.dart';
// // import 'package:qrcodereader/view_modal/home_logic/scan_qr_logic.dart';

// // class Generate_QR_Code extends StatelessWidget {
// //   const Generate_QR_Code({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final scanLogic = context.read<ScanQrCodeLogic>();
// //     final result = context.watch<ScanQrCodeLogic>().scannedResult;

// //     return Scaffold(
// //       backgroundColor: AppColors.BackgroundColor,
// //       body: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Column(
// //             children: [
// //               SizedBox(height: 150.h),
// //               SizedBox(
// //                 height: 200.h,
// //                 width: 200.w,
// //                 child: SvgPicture.asset(
// //                   "lib/utils/assets/splash_logo.svg",
// //                   fit: BoxFit.contain,
// //                 ),
// //               ),
// //               SizedBox(height: 180.h),

// //               // Pehla button — bilkul unchanged
// //               Custum_button(
// //                 button_name: 'Scan QR Code',
// //                 onTap: () {}, // no change
// //               ),
// //               SizedBox(height: 20.w),

// //               // Last button — scan logic attached
// //               Custum_button(
// //                 button_name: 'Generate QR Code',
// //                 onTap: scanLogic.scanQrCode,
// //               ),
// //               SizedBox(height: 40.h),

// //               // Scan result xyz
// //               if (result.isNotEmpty)
// //                 Padding(
// //                   padding: const EdgeInsets.all(12.0),
// //                   child: Text(
// //                     'Result: $result',
// //                     style: TextStyle(color: Colors.white, fontSize: 16.sp),
// //                     textAlign: TextAlign.center,
// //                   ),
// //                 ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }



































import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';
import 'package:qrcodereader/view_modal/home_logic/generate_Qr_logic.dart';

class Generate_Qr_Code extends StatelessWidget {
  const Generate_Qr_Code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundColor,
      body: Consumer<GenerateQrLogic>(
        builder: (context, logic, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (logic.generateCodeController.text.trim().isNotEmpty)
                QrImageView(
                  data: logic.generateCodeController.text,
                  version: QrVersions.auto,
                  size: 200.0,
                  foregroundColor: Colors.white,
                ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextField(
                  controller: logic.generateCodeController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Enter value to generate QR code",
                    hintStyle: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  logic.update(); // optional, since listener already added
                },
                child: Container(
                  height: 40.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                    color: AppColors.ButtonColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Generate QR",
                    style: TextStyle(
                      color: AppColors.BackgroundColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Itim',
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
