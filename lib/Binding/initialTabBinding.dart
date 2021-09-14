import 'package:flt_expense/Screen/Expense/ExpenseListController.dart';
import 'package:get/get.dart';

class InitialTabBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ExpenseListController());
  }
}
