import 'package:flt_expense/Binding/initialTabBinding.dart';
import 'package:flt_expense/Screen/Home/HomeTab/homeTabScreen.dart';
import 'package:flt_expense/Utils/app_constants.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/images.dart';
import 'package:flt_expense/Utils/keys.dart';
import 'package:flt_expense/Utils/strings.dart';
import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flt_expense/Widget/CustomButton.dart';
import 'package:flt_expense/Widget/backgroundWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(microseconds: 100), () {
      if (getPrefValue(Keys.QUICK_LOGIN) == "") {
        getQuickLoginDailog(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                90.heightBox,
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 120.0, bottom: 30),
                  child: SvgPicture.asset(
                    SVG.LOGO_WHITE,
                    alignment: Alignment.center,
                    height: 70,
                    color: white,
                  ),
                ),
                40.heightBox,
                Container(
                  width: Get.width,
                  height: Get.height * 0.755,
                  padding: EdgeInsets.only(left: 25, right: 25),
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
                        GridView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30.0,
                            mainAxisSpacing: 30.0,
                          ),
                          children: [
                            InkWell(
                              onTap: () {
                                Get.offAll(HomeTabScreen(), binding: InitialTabBinding());
                                // Get.to(AddExpenseScreen(), binding: AddExpenseBinding());
                              },
                              child: cardWidget(SVG.EXPENSE_ICON, "14", txtExpenses, 70.0),
                            ),
                            cardWidget(SVG.REPORT_ICON, "8", txtReports, 70.0),
                            cardWidget(SVG.MILEAGE_ICON, "11", txtMileage, 50.0),
                            cardWidget(SVG.APPROVAL_ICON, "11", txtApprovals, 50.0),
                            Container(
                              padding: EdgeInsets.all(20),
                              height: 30,
                              decoration: BoxDecoration(
                                color: homeCard,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      SVG.CAMERA_ICON,
                                      fit: BoxFit.fill,
                                      height: 60,
                                      color: primaryColor,
                                    ),
                                  ),
                                  25.heightBox,
                                  txtCamera.text.lg.make()
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              height: 30,
                              decoration: BoxDecoration(
                                color: homeCard,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: SvgPicture.asset(
                                      SVG.SETTING_ICON,
                                      fit: BoxFit.fill,
                                      height: 70,
                                      color: primaryColor,
                                    ),
                                  ),
                                  15.heightBox,
                                  txtSettings.text.lg.make()
                                ],
                              ),
                            ),
                          ],
                        ),
                        20.heightBox,
                        CustomButton(txtLogout, 0, 0, () {
                          // logoutDialog();
                          getQuickLoginDailog(context);
                        }),
                        100.heightBox,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardWidget(image, count, type, height) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 30,
      decoration: BoxDecoration(
        color: homeCard,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            textBaseline: TextBaseline.ideographic,
            children: <Widget>[
              Container(
                  transform: Matrix4.translationValues(0, 15, 0), child: "$count".text.bold.color(primaryColor).xl5.fontFamily(FAMILY_BOLD).make()),
              SvgPicture.asset(
                image,
                fit: BoxFit.fill,
                height: height,
                color: primaryColor,
              )
            ],
          ),
          25.heightBox,
          "$type".text.lg.make()
        ],
      ),
    );
  }
}

getQuickLoginDailog(context) {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
          ],
        ),
        width: Get.width / 1.1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fasterlogin1.richText.semiBold.center.fontFamily(FAMILY_BOLD).lg.make(),
            15.heightBox,
            fasterlogin2.richText.center.medium.make(),
            30.heightBox,
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: txtNotNow.text.lg.color(buttonColor).makeCentered(),
                  ),
                ),
                Container(
                  width: 5,
                  color: grey,
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: txtSet.text.lg.color(buttonColor).makeCentered(),
                  ),
                ),
              ],
            )
          ],
        ).paddingZero,
      ),
    ),
  );
}
