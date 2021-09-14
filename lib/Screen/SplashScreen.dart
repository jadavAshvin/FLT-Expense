import 'package:flt_expense/Screen/Auth/FingerPrint/fingerPrintScreen.dart';
import 'package:flt_expense/Screen/Home/HomeScreen/HomeScreen.dart';
import 'package:flt_expense/Utils/app_constants.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/images.dart';
import 'package:flt_expense/Utils/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      // Get.off(() => LoginScreen(), binding: LoginBinding());
      print("Token from splash ${getPrefValue(Keys.AUTH_TOKEN)}");
      if (getPrefValue(Keys.AUTH_TOKEN) != "") {
        Get.offAll(() => HomeScreen());
      } else {
        Get.off(() => FingerPrintScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.SPLASH_BACKGROUND),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(90.0),
          child: SvgPicture.asset(
            SVG.LOGO_WHITE,
            alignment: Alignment.center,
            color: white,
          ),
        ),
      ),
    );
  }
}
