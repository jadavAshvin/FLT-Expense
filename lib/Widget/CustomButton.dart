import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/texts/text.dart';
import 'package:flt_expense/Widget/sizeboxs.dart';

class CustomButton extends StatelessWidget {
  final double left;
  final double right;
  final Function() onTap;
  final String title;

  CustomButton(
    this.title,
    this.left,
    this.right,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: new BoxDecoration(
            color: buttonColor,
            shape: BoxShape.rectangle,
            //  border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          child: Center(
            child: title_text_normalWhite(title: title, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class CustomButtonProgress extends StatelessWidget {
  final double left;
  final double right;

  CustomButtonProgress(
    this.left,
    this.right,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: new BoxDecoration(
          color: primaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Center(
          child: CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  final double left;
  final double right;
  final Function() onTap;
  final String title;

  CustomButtonIcon(
    this.title,
    this.left,
    this.right,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: new BoxDecoration(
            color: primaryColor,
            shape: BoxShape.rectangle,
            //  border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(80.0)),
          ),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.watch_later_outlined, color: white, size: 35),
              TenSizeBoxWidth(),
              title_text_normalWhite(title: title, fontSize: 20),
            ],
          )),
        ),
      ),
    );
  }
}

class CustomButtonBorder extends StatelessWidget {
  final double left;
  final double right;
  final Function() onTap;
  final String title;

  CustomButtonBorder(
    this.title,
    this.left,
    this.right,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: new BoxDecoration(
            color: white,
            border: Border.all(color: primaryColor),
            shape: BoxShape.rectangle,
            //  border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Center(
            child: title_normalBlack(title: title, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
