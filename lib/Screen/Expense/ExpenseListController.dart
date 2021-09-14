import 'package:flt_expense/Apis/ExpenseApis.dart';
import 'package:flt_expense/Model/ExpenseModule/expenseListModel.dart';
import 'package:get/get.dart';

class ExpenseListController extends GetxController {
  RxBool isLoading = false.obs;
  List<ExpenseListModel> expenseList = List<ExpenseListModel>.empty(growable: true);
  @override
  void onInit() {
    super.onInit();
    getExpense();
  }

  getExpense() async {
    isLoading(true);
    var res = await ExpenseApis.getExpenseListApi();
    if (res != null) {
      var r = ExpenseListResponse.fromJson(res.body);

      expenseList = r.expenseList;
    }
    isLoading(false);
  }
}
