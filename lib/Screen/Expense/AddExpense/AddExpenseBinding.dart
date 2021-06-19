import 'package:flt_expense/Screen/Expense/AddExpense/AddExpenseController.dart';
import 'package:get/get.dart';

class AddExpenseBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AddExpenseController());
  }
}
