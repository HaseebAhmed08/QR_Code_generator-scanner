import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/screens/setting_screen/widgets/custum_listtile.dart';
import 'package:qrcodereader/screens/setting_screen/widgets/toogle_button.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';
import 'package:qrcodereader/view_modal/setting_screen_logic/page1_toogle_logic.dart';

class Setting1_Screen extends StatefulWidget {
const Setting1_Screen({super.key});

  @override
  State<Setting1_Screen> createState() => _Setting1_ScreenState();
}

class _Setting1_ScreenState extends State<Setting1_Screen> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: AppColors.pageBgColor,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 46.h, left: 40.w),
                child: Container(
                  height: 46.h,
                  width: 46.w,
                  decoration: BoxDecoration(
                    color: AppColors.BackgroundColor,
                    borderRadius: BorderRadius.circular(
                      12.r,
                    ), // responsive corner
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: AppColors.ButtonColor,
                    size: 24.h,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h, left: 40.w),
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: AppColors.ButtonColor,
                    fontSize: 26.sp,
                    fontFamily: 'Itim',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Custum_listile(
            my_title: "Vibrate",
            my_subtitle: "Vibration when scan is done.",
            leading_image: SvgPicture.asset(
              'lib/utils/setting_screen_icons/vibrate_icon.svg',
            ),
            trailing_image: ChangeNotifierProvider(
              create: (_) => Page_1_logic(),
              child: Toogle_button(),
            ),
          ),
          SizedBox(height: 20.h),
          Custum_listile(
            my_title: "Beep",
            my_subtitle: "Beep when scan is done.",
            leading_image: SvgPicture.asset(
              'lib/utils/setting_screen_icons/beep_icon.svg',
            ),
            trailing_image:Toogle_button()
          ),

          // /////////////////////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h, left: 40.w),
                child: Text(
                  "Support",
                  style: TextStyle(
                    color: AppColors.ButtonColor,
                    fontSize: 26.sp,
                    fontFamily: 'Itim',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Custum_listile(
            my_title: "Rate Us",
            my_subtitle: "Your best reward to us.",
            leading_image: SvgPicture.asset(
              'lib/utils/setting_screen_icons/rate_icon.svg',
            ),
          ),
          SizedBox(height: 3.h),
          Custum_listile(
            my_title: "Beep",
            my_subtitle: "Share app with others.",
            leading_image: SvgPicture.asset(
              'lib/utils/setting_screen_icons/beep_icon.svg',
            ),
          ),
          SizedBox(height: 3.h),
          Custum_listile(
            my_title: "Privacy Policy",
            my_subtitle: "Follow our policies that benefits you.",
            leading_image: SvgPicture.asset(
              'lib/utils/setting_screen_icons/privecy_icon.svg',
            ),
          ),
        ],
      ),
    );
  }
}
