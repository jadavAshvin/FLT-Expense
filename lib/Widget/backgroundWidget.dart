import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  BackgroundWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              image: DecorationImage(image: AssetImage(Images.HOME_BACKGROUND)),
            ),
          ),
          child
        ],
      ),
    );
  }
}
