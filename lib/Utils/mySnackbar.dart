import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

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
