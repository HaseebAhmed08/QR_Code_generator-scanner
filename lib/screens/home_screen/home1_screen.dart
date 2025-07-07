import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/screens/home_screen/widgets/custum_button.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';
import 'package:qrcodereader/view_modal/home_logic/generate_Qr_logic.dart';
import 'package:qrcodereader/view_modal/home_logic/scan_qr_logic.dart';

class Home1Screen extends StatefulWidget {
  const Home1Screen({Key? key}) : super(key: key);

  @override
  State<Home1Screen> createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  @override
  Widget build(BuildContext context) {
    final GenerateQrLogic generatoe_qrlogic = Provider.of(
      context,
      listen: false,
    );

    final ScanQrCodeLogic scanQrCodeLogic = Provider.of(context, listen: false);

    return Scaffold(
      backgroundColor: AppColors.BackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 150.h),
              Container(
                height: 200.h,
                width: 200.w,
                child: SvgPicture.asset(
                  "lib/utils/assets/splash_logo.svg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 180.h),
              Consumer<GenerateQrLogic>(
                builder: (context, value, child) {
                  return Custum_button(
                    onTap: () {
                      value.navigateToGenerat_screen(context);
                    },
                    button_name: 'Generate QR Code',
                  );
                },
              ),
              SizedBox(height: 20.w),
              Consumer<ScanQrCodeLogic>(
                builder: (context, value, child) {
                  return Custum_button(
                    onTap: () {
                      value.navigateToScanScreen(context);
                    },
                    button_name: 'Scan QR Code',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
