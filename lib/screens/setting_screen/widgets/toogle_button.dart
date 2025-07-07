import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrcodereader/utils/appcolors/app_colors.dart';
import 'package:qrcodereader/view_modal/setting_screen_logic/page1_toogle_logic.dart';

class Toogle_button extends StatefulWidget {
  const Toogle_button({super.key});

  @override
  State<Toogle_button> createState() => _Toogle_buttonState();
}

class _Toogle_buttonState extends State<Toogle_button> {
  @override
  Widget build(BuildContext context) {
    final Page_1_logic page1_logic = Provider.of<Page_1_logic>(context,listen: false);

    return Consumer<Page_1_logic>(
      builder: (context, value, child) {
       return
        Switch(
          value: page1_logic.is_switched,
          onChanged: (newValue) {
            value.toogle_switch(newValue);
          },
    activeColor: AppColors.ButtonColor,
       activeTrackColor:AppColors.toogle_backgroundColor, 
           inactiveTrackColor: AppColors.pageBgColor,
           inactiveThumbColor: AppColors.toogle_thumbColor,     
        );
      },
    );
  }
}
