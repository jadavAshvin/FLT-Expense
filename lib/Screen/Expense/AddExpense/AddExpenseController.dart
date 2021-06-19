import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddExpenseController extends GetxController {
  TextEditingController expenseName = TextEditingController();
  TextEditingController purposeName = TextEditingController();
  TextEditingController amountName = TextEditingController(text: "0");
  TextEditingController splitPercent = TextEditingController(text: "0");
  TextEditingController exactSum = TextEditingController(text: "0");
  RxString selectedExpense = "".obs;
  Rx<DateTime> date = DateTime.now().obs;
  List<String> expType = ["BreakFast", "Dinner", "Lunch"];
  List<String> projectList = ["Project 1", "Project 2", "Project 3"];
  var checkBox = false.obs;
  var radioSelected = 1.obs;
}
