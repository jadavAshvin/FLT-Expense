import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

progressIndicator() {
  return Container(
    child: Center(
      child: "Expense".text.xl4.fontFamily("Times New Roman").makeCentered().shimmer(
            duration: Duration(seconds: 2),
            primaryColor: primaryColor,
            secondaryColor: white,
          ),
    ),
  );
}
