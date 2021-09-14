import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'colors.dart';

mySnackBar(String message) {
  return Get.rawSnackbar(
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.grey.shade400.withOpacity(0.95),
      messageText: Text(message),
      padding: EdgeInsets.all(20),
      borderRadius: 10,
      margin: EdgeInsets.all(10));
}

mediumToastMessage({String? title, required String description}) {
  Fluttertoast.showToast(
    msg: description,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: primaryColor,
    textColor: white,
  );
}

longToastMessage({String? title, required String description}) {
  Fluttertoast.showToast(
    msg: description,
    toastLength: Toast.LENGTH_LONG,
    backgroundColor: primaryColor,
    textColor: white,
  );
}

mySnackbarColor({required String title, required String description, Color? color}) {
  return Get.snackbar(title, description, backgroundColor: color, snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
}

Future<bool> toastBack({String? title, required String description}) async {
  Fluttertoast.showToast(
    msg: description,
    toastLength: Toast.LENGTH_LONG,
    backgroundColor: primaryColor,
    textColor: white,
  );
  bool res = await Future.delayed(Duration(seconds: 2)).then((value) => true);
  return res;
}
