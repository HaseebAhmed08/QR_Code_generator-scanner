import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';

class Custum_listile extends StatefulWidget {
  final String my_title;
  final String my_subtitle;
  final Widget? trailing_image;
  final Widget leading_image;

  Custum_listile({
    super.key,
    required this.my_title,
    required this.my_subtitle,
    this.trailing_image,
    required this.leading_image,
  });

  @override
  State<Custum_listile> createState() => _Cus_listileState();
}

class _Cus_listileState extends State<Custum_listile> {
  @override
  Widget build(BuildContext context) {
    return 

Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
      ), // responsive horizontal padding
      child: Container(
        height: 68.h,
        width: 378.w,
        decoration: BoxDecoration(
          color: AppColors.BackgroundColor,
          borderRadius: BorderRadius.circular(12.r), // rounded corners
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
    
          title: Text(widget.my_title, style: TextStyle(fontSize: 12.sp,color: AppColors.textColor)),
          subtitle: Text(widget.my_subtitle, style: TextStyle(fontSize: 10.sp , color: AppColors.tileFontColor)),
       
       trailing: widget.trailing_image,
          leading: widget.leading_image,
        ),
      ),
    );

  }
}