import 'package:flt_expense/Screen/Auth/Login/LoginScreen.dart';
import 'package:flt_expense/Screen/Auth/Login/loginBinding.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/images.dart';
import 'package:flt_expense/Utils/strings.dart';
import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class FingerPrintScreen extends StatelessWidget {
  const FingerPrintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              100.heightBox,
              Hero(
                  tag: "Color_Logo",
                  child: Image.asset(Images.EXPENSE_LOGO_COLOR)),
              30.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "$txtHello John".text.bold.fontFamily(FAMILY_BOLD).xl2.make(),
                  10.heightBox,
                  txtUserTouchID.text.base.make(),
                ],
              ),
              (Get.height / 9).heightBox,
              CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 70,
                  child: SvgPicture.asset(
                    SVG.EXPENSE_FINGERPRINT,
                    color: greyLight,
                  )),
              (Get.height / 8).heightBox,
              InkWell(
                onTap: () {
                  Get.off(() => LoginScreen(), binding: LoginBinding());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    txtLoginPass.text.color(primaryColor).lg.make(),
                    10.widthBox,
                    Icon(
                      Icons.arrow_forward,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  txtCantLogin.text.wide.medium.makeCentered(),
                  5.widthBox,
                  txtHelp.text.color(primaryColor).wide.medium.makeCentered(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
