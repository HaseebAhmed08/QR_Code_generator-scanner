import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';

class Custum_button extends StatefulWidget {
  final String button_name;
  final Function()? onTap;

  const Custum_button({super.key, required this.button_name, this.onTap});

  @override
  State<Custum_button> createState() => _Custum_buttonState();
}

class _Custum_buttonState extends State<Custum_button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 40.h,
        width: 240.w,
        decoration: BoxDecoration(
          color: AppColors.ButtonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
       // Changed from spaceEvenly
         mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
          // SizedBox(width: 30.w,),
            Text(
              widget.button_name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.BackgroundColor,
                fontWeight: FontWeight.w600,
                fontFamily: 'Itim',
                fontSize: 16.sp,
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
