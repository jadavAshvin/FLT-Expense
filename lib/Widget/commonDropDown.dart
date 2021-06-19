import 'package:flt_expense/Widget/CommonTextField.dart';
import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/colors.dart';

class CommanDropDown extends StatelessWidget {
  final Widget? child;

  const CommanDropDown({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: grey),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: child,
    );
  }
}

class CustomTabWithIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final onTap;
  final bool color;

  CustomTabWithIcon({Key? key, required this.icon, required this.title, this.onTap, this.color = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: grey),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "$title",
                style: commanTextFieldStyle,
              ),
            ),
            Icon(
              icon,
              color: primaryColor,
            )
          ],
        ),
      ),
    );
  }
}

/* 
 hintWidget: Obx(
                    () => Text(
                      addBoqController.selectedUnit.value.name,
                      style: commanTextFieldStyle,
                    ),
                  ),
                  
                   */
