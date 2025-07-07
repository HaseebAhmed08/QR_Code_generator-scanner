import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';
import 'package:qrcodereader/view_modal/splash_screen_logic/splash2_screen_logic.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    final Splash_2_logic splash_2_logic = Provider.of<Splash_2_logic>(
      context,
      listen: false,
    );
    print('Build');
    return Scaffold(
      backgroundColor: AppColors.ButtonColor,
      body: Column(
        children: [
        
          SizedBox(height: 247.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 114.w),
            child: Container(
              height: 200.h,
              width: 200.w,
              child: SvgPicture.asset(
                'lib/utils/assets/second_screen_logo.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 339.h,
            width: 428.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(61.w),
                topRight: Radius.circular(61.w),
              ),
              color: AppColors.BackgroundColor,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 22.h),
                  height: 5.h,
                  width: 134.w,
                  decoration: BoxDecoration(color: AppColors.ButtonColor),
                ),
                Padding(padding: EdgeInsets.only(top: 50.h)),
                Text(
                  "Get Started",
                  style: TextStyle(
                    fontFamily: 'Itim',
                    color: AppColors.textColor,
                    fontSize: 40.sp,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 6.h)),
                Text(
                  "Go and enjoy our features for free and\nmake your life easy with us.",
                  style: TextStyle(
                    fontFamily: 'Itim',
                    color: AppColors.textColor,
                    fontSize: 17.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: Consumer<Splash_2_logic>(
                    builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () {
                          value.initializeApp(context);
                          print('ontap builded');
                        },
                        child: Container(
                          height: 58.h,
                          width: 319.w,
                          decoration: BoxDecoration(
                            color: AppColors.ButtonColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 30.w),
                              Text(
                                "Let's Go",
                                style: TextStyle(
                                  color: AppColors.BackgroundColor,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Itim',
                                  fontSize: 16.sp,
                                ),
                              ),

                              Icon(
                                Icons.arrow_right_alt_sharp,
                                color: AppColors.BackgroundColor,
                                size: 25.h,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
