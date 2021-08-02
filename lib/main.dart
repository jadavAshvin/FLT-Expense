import 'package:flt_expense/Screen/SplashScreen.dart';
import 'package:flt_expense/Utils/pref.dart';
import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Common/accessController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Pref.init();
    Get.lazyPut(()=>AccessController(),fenix: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Expense',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: FAMILY_REGULAR),
      home: SplashScreen(),
    );
  }
}
