import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/texts/textSize.dart';
import '../colors.dart';
import 'package:velocity_x/velocity_x.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final String? toolTip;
  final bool? lead;
  final bool? centerTitle;
  final IconData? trail;
  final onTap;
  BaseAppBar({this.title, this.lead, this.trail, this.onTap, this.toolTip, this.centerTitle});

  static const double _topBarHeight = 60;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      title: title!.text.fontFamily(FAMILY_REGULAR).wide.minFontSize(text22).extraBold.make(),
      centerTitle: centerTitle == null ? true : centerTitle,
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
