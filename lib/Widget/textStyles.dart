import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/colors.dart';

TextStyle textStyle14() {
  return TextStyle(
    fontSize: 14,
    color: black,
  );
}

TextStyle textStyle16Primary() {
  return TextStyle(
    fontSize: 16,
    color: primaryColor,
  );
}

TextStyle textStyle16Black() {
  return TextStyle(
    fontSize: 16,
    color: primaryColor,
  );
}

TextStyle textObx(context, Color color) {
  return Theme.of(context).textTheme.subtitle2!.copyWith(color: color);
}
