import 'package:flt_expense/Screen/Auth/Login/loginController.dart';
import 'package:flt_expense/Screen/Home/HomeScreen/HomeBinding.dart';
import 'package:flt_expense/Screen/Home/HomeScreen/HomeScreen.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/images.dart';
import 'package:flt_expense/Utils/strings.dart';
import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flt_expense/Widget/CommonTextField.dart';
import 'package:flt_expense/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundView(),
              Column(
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height * 0.33,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: Get.width,
                      height: Get.height * 0.60,
                      padding: EdgeInsets.only(left: 40, right: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: white,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            50.heightBox,
                            txtSignIn.text.bold.fontFamily(FAMILY_BOLD).xl3.make(),
                            20.heightBox,
                            email.text.normal.medium.make(),
                            5.heightBox,
                            TextFormField(
                              controller: controller.emailController,
                              decoration: commonInputDecoration(Icons.perm_identity),
                            ),
                            20.heightBox,
                            txtpassword.text.normal.medium.make(),
                            5.heightBox,
                            TextFormField(
                              controller: controller.passController,
                              decoration: commonInputDecoration(Icons.lock_outline_rounded),
                            ),
                            20.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: primaryColor,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            )),
                                        width: 20,
                                        height: 20,
                                        child: Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor: Colors.transparent,
                                          ),
                                          child: Obx(() => Checkbox(
                                                activeColor: primaryColor,
                                                checkColor: white,
                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                visualDensity: VisualDensity.standard,
                                                value: controller.checkBox.value,
                                                tristate: false,
                                                onChanged: (bool? isChecked) {
                                                  controller.checkBox(isChecked!);
                                                },
                                              )),
                                        ),
                                      ),
                                    ),
                                    5.widthBox,
                                    txtAutoSign.text.color(primaryColor).wide.medium.make()
                                  ],
                                ),
                                txtforgotPassword.text.color(primaryColor).wide.medium.make(),
                              ],
                            ),
                            30.heightBox,
                            CustomButton(txtSignIn, 0, 0, () {
                              Get.to(HomeScreen(), binding: HomeBinding());
                            }),
                            30.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                txtCantLogin.text.wide.medium.makeCentered(),
                                5.widthBox,
                                txtHelp.text.color(primaryColor).wide.medium.makeCentered(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  backgroundView() {
    return Container(
      width: Get.width,
      height: Get.height * 0.45,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          Images.SPLASH_BACKGROUND,
        ),
        fit: BoxFit.fitWidth,
      )),
      child: Padding(
        padding: const EdgeInsets.only(left: 120.0, right: 120.0, bottom: 50),
        child: SvgPicture.asset(
          SVG.LOGO_WHITE,
          alignment: Alignment.center,
          color: white,
        ),
      ),
    );
  }
}
