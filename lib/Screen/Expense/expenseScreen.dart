import 'package:flt_expense/Model/ExpenseModule/expenseListModel.dart';
import 'package:flt_expense/Screen/Expense/ExpenseListController.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flt_expense/Widget/progressInicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpenseScreen extends GetWidget<ExpenseListController> {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // dateWidget("Today"),
              // itemList(2),
              // dateWidget("June 03,2021"),
              // itemList(5),
              // dateWidget("June 02,2021"),
              Obx(
                () => controller.isLoading.value ? progressIndicator() : itemList(controller.expenseList),
              )
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

  Widget itemList(List<ExpenseListModel> expensList) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: expensList.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return listTab(expensList[index]);
      },
      // separatorBuilder: (BuildContext context, int index) {
      //   return Divider(
      //     color: grey,
      //   );
      // },
    );
  }

  Widget listTab(ExpenseListModel expense) {
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
                "${expense.expenseName}".text.xl.wide.fontFamily(FAMILY_BOLD).bold.make(),
                "${expense.purpose}".text.lg.color(grey).make(),
                "${expense.location}".text.lg.color(grey).make(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                "${expense.amount}".text.xl.bold.make(),
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
