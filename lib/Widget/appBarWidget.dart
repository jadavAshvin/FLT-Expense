import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/texts/text.dart';
import 'package:flt_expense/Utils/texts/textSize.dart';
import 'package:flt_expense/Utils/images.dart';

final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

class CustomNewAppBar extends StatelessWidget {
  final String headerTitle;
  final IconData? rightTitle;

  final Function() _onTap;
  CustomNewAppBar(
    this.headerTitle,
    this.rightTitle,
    this._onTap,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      color: primaryColor,
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                tooltip: "Drawer",
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: ImageIcon(
                  AssetImage(Images.ICON_DRAWER),
                  color: white,
                ),
              ),
              // InkWell(
              //     onTap: () {
              //       scaffoldKey.currentState!.openDrawer();
              //     },
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 5),
              //       child: Image.asset(
              //         Images.ICON_DRAWER,
              //         fit: BoxFit.cover,
              //         height: 18,
              //         width: 20,
              //       ),
              //     )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: title_text_BoldWhite(
                    fontSize: text22,
                    title: headerTitle,
                  ),
                ),
              ),
              rightTitle != null
                  ? InkWell(
                      onTap: _onTap,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0, top: 5.0),
                        child: Icon(rightTitle),
                      ),
                    )
                  : IconButton(
                      tooltip: "Notification",
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage(Images.ICON_NOTIFICATION),
                        color: white,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
