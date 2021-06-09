import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/pref.dart';
import 'package:flt_expense/Widget/sizeboxs.dart';

noDataWidget(String title, context, onPressed) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Pref.getString(title).text.bold.xl.makeCentered(),
        FifteenSizeBox(),
        IconButton(
          splashColor: primaryColor,
          icon: Icon(Icons.refresh, color: white),
          tooltip: 'Refresh',
          onPressed: onPressed,
        ).backgroundColor(primaryColor).cornerRadius(50),
      ],
    ),
  );
}
