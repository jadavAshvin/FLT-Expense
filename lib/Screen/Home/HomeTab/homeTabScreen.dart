import 'package:flt_expense/Screen/Expense/AddExpense/AddExpenseBinding.dart';
import 'package:flt_expense/Screen/Expense/AddExpense/AddExpenseScreen.dart';
import 'package:flt_expense/Screen/Expense/expenseScreen.dart';
import 'package:flt_expense/Screen/Home/HomeScreen/HomeScreen.dart';
import 'package:flt_expense/Utils/CommonAppBar/commonAppbar.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  _HomeTabScreenState createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> with SingleTickerProviderStateMixin {
  var index = 0;
  late AnimationController animationController;
  late Animation degOneTranslationAnimation, degTwoTranslationAnimation, degThreeTranslationAnimation;
  late Animation rotationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    degOneTranslationAnimation = TweenSequence(<TweenSequenceItem>[
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence(<TweenSequenceItem>[
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0)
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence(<TweenSequenceItem>[
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65.0)
    ]).animate(animationController);
    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  // bool _isShowDial = false;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(top: 30),
        child: new FloatingActionButton(
          onPressed: () {
            Get.to(AddExpenseScreen(), binding: AddExpenseBinding());
          },
          tooltip: 'Add',
          child: Icon(Icons.add),
          backgroundColor: buttonColor,
          elevation: 4.0,
        ),
      ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(top: 35.0, left: 10),
      //   child: Stack(
      //     children: <Widget>[
      //       Transform.translate(
      //         offset: Offset.fromDirection(getRadiansFromDegree(330), degOneTranslationAnimation.value * 120),
      //         child: Transform(
      //           transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value))..scale(degOneTranslationAnimation.value),
      //           alignment: Alignment.center,
      //           child: InkWell(
      //             onTap: () {
      //               Get.to(AddExpenseScreen(), binding: AddExpenseBinding());
      //             },
      //             child: CircularButton(
      //               label: "Add\n Mileage",
      //               width: 50,
      //               height: 50,
      //               icon: SVG.MILEAGE_ICON,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Transform.translate(
      //         offset: Offset.fromDirection(getRadiansFromDegree(270), degOneTranslationAnimation.value * 120),
      //         child: Transform(
      //           transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value))..scale(degOneTranslationAnimation.value),
      //           alignment: Alignment.center,
      //           child: InkWell(
      //             onTap: () {
      //               Get.to(AddExpenseScreen(), binding: AddExpenseBinding());
      //             },
      //             child: CircularButton(
      //               label: "Add\n Report",
      //               width: 50,
      //               height: 50,
      //               icon: SVG.REPORT_ICON,
      //             ),
      //           ),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Get.to(AddExpenseScreen(), binding: AddExpenseBinding());
      //         },
      //         child: Transform.translate(
      //           offset: Offset.fromDirection(getRadiansFromDegree(210), degOneTranslationAnimation.value * 120),
      //           child: Transform(
      //             transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value))..scale(degOneTranslationAnimation.value),
      //             alignment: Alignment.center,
      //             child: CircularButton(
      //               label: "Add\n Expense",
      //               width: 50,
      //               height: 50,
      //               icon: SVG.EXPENSE_ICON,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Transform(
      //         transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value)),
      //         alignment: Alignment.center,
      //         child: FloatingActionButton(
      //           backgroundColor: buttonColor,
      //           child: Icon(
      //             Icons.add,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {
      //             if (animationController.isCompleted) {
      //               animationController.reverse();
      //             } else {
      //               animationController.forward();
      //             }
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: SpeedDialMenuButton(
      //   //if needed to close the menu after clicking sub-FAB
      //   isShowSpeedDial: _isShowDial,
      //   //manually open or close menu
      //   updateSpeedDialStatus: (isShow) {
      //     //return any open or close change within the widget
      //     this._isShowDial = isShow;
      //   },
      //   isEnableAnimation: true,

      //   mainFABPosX: Get.width / 2.4,
      //   //general init
      //   isMainFABMini: false,

      //   mainMenuFloatingActionButton: MainMenuFloatingActionButton(
      //       child: Icon(Icons.add),
      //       onPressed: () {},
      //       backgroundColor: buttonColor,
      //       closeMenuChild: Icon(Icons.close),
      //       closeMenuForegroundColor: Colors.white,
      //       closeMenuBackgroundColor: buttonColor),
      //   floatingActionButtonWidgetChildren: <FloatingActionButton>[
      //     FloatingActionButton(
      //       child: SvgPicture.asset(
      //         SVG.EXPENSE_ICON,
      //         color: primaryColor,
      //       ),
      //       onPressed: () {
      //         Get.to(AddExpenseScreen(), binding: AddExpenseBinding());
      //       },
      //       backgroundColor: white,
      //     ),
      //     FloatingActionButton(
      //       child: SvgPicture.asset(
      //         SVG.REPORT_ICON,
      //         color: primaryColor,
      //       ),
      //       onPressed: () {
      //         //if need to toggle menu after click
      //       },
      //       backgroundColor: white,
      //     ),
      //     FloatingActionButton(
      //       child: SvgPicture.asset(
      //         SVG.MILEAGE_ICON,
      //         color: primaryColor,
      //       ),
      //       onPressed: () {
      //         //if no need to change the menu status
      //       },
      //       backgroundColor: white,
      //     ),
      //   ],
      //   isSpeedDialFABsMini: false,

      //   paddingBtwSpeedDialButton: 50.0,
      // ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      SVG.EXPENSE_ICON,
                      color: index == 0 ? primaryColor : grey,
                      height: 26,
                    ),
                    5.heightBox,
                    Text("Expense")
                  ],
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      SVG.REPORT_ICON,
                      color: index == 1 ? primaryColor : grey,
                      height: 25,
                    ),
                    5.heightBox,
                    Text("Reports")
                  ],
                ),
              )),
              Expanded(child: new Text('')),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      SVG.MILEAGE_ICON,
                      color: index == 2 ? primaryColor : grey,
                      height: 25,
                    ),
                    5.heightBox,
                    Text("Mileage")
                  ],
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Get.offAll(HomeScreen());
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      SVG.PROFILE_ICON,
                      color: index == 3 ? primaryColor : grey,
                      height: 25,
                    ),
                    5.heightBox,
                    Text("Profile")
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: BaseAppBar(title: "Expense"),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: [
          ExpenseScreen(),
          ExpenseScreen(),
          ExpenseScreen(),
        ][index],
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String? icon;
  final String? label;

  CircularButton({this.width, this.height, this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          width: width,
          height: height,
          child: FloatingActionButton(
            backgroundColor: white,
            onPressed: () {
              print("Floating Pressed");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                icon!,
                color: primaryColor,
                // height: 10,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        10.heightBox,
        "$label".text.base.center.make()
      ],
    );
  }
}
