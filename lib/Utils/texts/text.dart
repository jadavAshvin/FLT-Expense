import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

//=================== This  all files are common for all app we can use it anywhere =======================//
// ignore: non_constant_identifier_names
title_text_normalWhite({double? fontSize, required String title}) {
  return Text(title, style: TextStyle(color: white, fontSize: fontSize, fontFamily: 'Montserrat-Medium'));
}

// ignore: non_constant_identifier_names
title_normalWhite({double? fontSize, required String title}) {
  return Text(title, style: TextStyle(color: white, fontSize: fontSize, fontFamily: 'Montserrat-Regular'));
}

// ignore: non_constant_identifier_names
title_normalBlack({double? fontSize, required String title}) {
  return Text(title, style: TextStyle(color: black, fontSize: fontSize, fontFamily: 'Montserrat-Regular'));
}

// ignore: non_constant_identifier_names
title_normalGrey({double? fontSize, required String title}) {
  return Text(title, style: TextStyle(color: grey, fontSize: fontSize, fontFamily: 'Montserrat-Regular'));
}

// ignore: non_constant_identifier_names
title_text_normalBlack({double? fontSize, required String title, Color? color}) {
  return Text(title, style: TextStyle(color: black, fontSize: fontSize, fontFamily: 'Montserrat-Medium'));
}

// ignore: non_constant_identifier_names
title_text_BoldWhite({
  double? fontSize,
  required String title,
}) {
  return Text(title, style: TextStyle(color: white, fontSize: fontSize, fontFamily: 'Montserrat-Bold'));
}

// ignore: non_constant_identifier_names
title_text_BoldBlack({
  double? fontSize,
  required String title,
}) {
  return Text(title, style: TextStyle(color: black, fontSize: fontSize, fontFamily: 'Montserrat-Bold'));
}
