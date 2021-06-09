import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/extensions.dart';
/*title_text({double fontSize, String title, BuildContext context, Color color}) {
  return Text(title,
      style: Theme.of(context)
          .textTheme
          .button
          .copyWith()
          .copyWith(color: color, fontSize: fontSize));
}*/

// ignore: non_constant_identifier_names
title_text10Normal({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 11.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text12Normal({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 12.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text12Grey({required String title, required BuildContext context}) {
  return Text(title,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: grey, fontSize: 12.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text12DropDown({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: dropDownTextColor, fontSize: 12.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text10DropDown({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: dropDownTextColor, fontSize: 10.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text10Edit({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: editTextColor, fontSize: 10.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text12DropDownSelected({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 12.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text12GreyMaxLines2({required String title, required BuildContext context, lines}) {
  return Text(title,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(
            color: grey,
            fontSize: 12.0.toHeight(),
          ));
}

// ignore: non_constant_identifier_names
title_text11GreyMaxLines1({required String title, required BuildContext context}) {
  return Text(title,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(
            color: grey,
            fontSize: 11.0.toHeight(),
          ));
}

// ignore: non_constant_identifier_names
title_text12NormalWhite({required String title, required BuildContext context}) {
  return Text(title.tr, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: white, fontSize: 12.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text12Bold({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 12.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text13BoldPrimary({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: primaryColor, fontSize: 13.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text13NormalPrimary({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: primaryColor, fontSize: 13.0.toHeight(), fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text13BoldWhite({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: white, fontSize: 13.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text13BoldGreen({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: selectedColor, fontSize: 13.0.toHeight(), fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text14BoldPrimary({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: primaryColor, fontSize: 14.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text14BoldBlack({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 14.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text14BoldGrey({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: grey, fontSize: 14.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text14NormalPrimary({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: primaryColor, fontSize: 14.0.toHeight(), fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text14NormalBlack({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 14.0.toHeight(), fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text14NormalGrey({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: grey, fontSize: 14.0.toHeight(), fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text13NormalBlack({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 13.0.toHeight(), fontWeight: FontWeight.w600));
}

// ignore: non_constant_identifier_names
title_text13NormalRed({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: Colors.red, fontSize: 13.0.toHeight(), fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text13Normalcolor({required String title, required BuildContext context, Color? color}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: color, fontSize: 13.0.toHeight(), fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text13BoldBlack({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 13.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text13BoldGrey({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: grey, fontSize: 13.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
bigTitle_text({required double fontSize, required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(
            color: white,
          )
          .copyWith(color: primaryColor, fontSize: fontSize.toWidth(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
bigTitle_blacktext({required double fontSize, required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(
            color: white,
          )
          .copyWith(color: Colors.black, fontSize: fontSize.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
bigTitle_textNormal({double? fontSize, required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(
            color: white,
          )
          .copyWith(color: primaryColor, fontSize: fontSize, fontWeight: FontWeight.normal));
}

// ignore: non_constant_identifier_names
title_text_grey12({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(
            color: white,
          )
          .copyWith(color: grey, fontSize: 12.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text_grey11({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(
            color: white,
          )
          .copyWith(color: grey, fontSize: 11.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text_grey13({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: grey, fontSize: 13.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text_black13({required String title, required BuildContext context}) {
  return Text(title, style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 13.0.toHeight()));
}

// ignore: non_constant_identifier_names
title_text_black13Bold({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context).textTheme.button!.copyWith().copyWith(color: black, fontSize: 13.0.toHeight(), fontWeight: FontWeight.bold));
}

// ignore: non_constant_identifier_names
title_text_white13({required String title, required BuildContext context}) {
  return Text(title,
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(
            color: white,
          )
          .copyWith(fontSize: 13.0.toHeight()));
}
