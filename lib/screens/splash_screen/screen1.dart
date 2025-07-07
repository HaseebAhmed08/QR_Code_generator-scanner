import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';
import 'package:qrcodereader/view_modal/splash_screen_logic/splash1_logic.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
 Future.microtask(() =>
    Provider.of<Splash_1_logic>(context, listen: false).initializeApp(context));

    return Scaffold(
      backgroundColor: AppColors.BackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 263.h),
          Center(
            child: Container(
              height: 200.h,
              width: 200.w,
              child: SvgPicture.asset(
                "lib/utils/assets/splash_logo.svg",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
