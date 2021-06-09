import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/texts/textSize.dart';
import '../colors.dart';
import 'package:velocity_x/velocity_x.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final String? toolTip;
  final bool? lead;
  final IconData? trail;
  final onTap;
  BaseAppBar({this.title, this.lead, this.trail, this.onTap, this.toolTip});

  static const double _topBarHeight = 60;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      title: title!.text.fontFamily("Times New Roman").minFontSize(text22).extraBold.make(),
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back_sharp, size: 30, color: white),
      //   onPressed: () => Get.back(),
      // ),
      actions: [
        if (trail != null)
          IconButton(
            tooltip: toolTip,
            icon: Icon(trail, size: 30),
            onPressed: onTap,
          )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_topBarHeight);
}
