import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              dateWidget("Today"),
              itemList(2),
              dateWidget("June 03,2021"),
              itemList(5),
              dateWidget("June 02,2021"),
              itemList(2),
            ],
          ),
        ),
      ),
    );
  }

  Widget dateWidget(date) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: "$date".text.lg.color(primaryColor).make(),
    );
  }

  Widget itemList(itemCount) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return listTab();
      },
      // separatorBuilder: (BuildContext context, int index) {
      //   return Divider(
      //     color: grey,
      //   );
      // },
    );
  }

  Widget listTab() {
    return Container(
      color: white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                "Dinner".text.xl.wide.fontFamily(FAMILY_BOLD).bold.make(),
                "Praesent autor".text.lg.color(grey).make(),
                "Plain Field New Jersy".text.lg.color(grey).make(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                "65".text.xl.bold.make(),
                "USD".text.lg.make(),
                Icon(
                  Icons.check_circle_outline,
                  color: primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
