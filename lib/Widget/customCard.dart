import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/colors.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  CustomCard({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // if you need this
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5),
          child: child,
        ));
  }
}
