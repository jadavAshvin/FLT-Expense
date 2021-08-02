import 'package:flutter/material.dart';
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

mySnackbar({required String title, required String description}) {
  return Get.snackbar(
    title,
    description,
    backgroundColor: grey,
    snackPosition: SnackPosition.BOTTOM,
  );
}

mySnackbarColor({required String title, required String description, Color? color}) {
  return Get.snackbar(title, description,
      backgroundColor: color,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2));
}

Future<bool> snackBarBack({required String title, required String description}) async {
  Get.snackbar(title, description,
      backgroundColor: grey,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2));
  bool res = await Future.delayed(Duration(seconds: 2)).then((value) => true);
  return res;
}
