import 'package:flt_expense/Apis/ExpenseApis.dart';
import 'package:flt_expense/Model/ExpenseModule/expenseTypeListModel.dart';
import 'package:flt_expense/Model/ExpenseModule/projectListModel.dart';
import 'package:flt_expense/Screen/Expense/ExpenseListController.dart';
import 'package:flt_expense/Utils/mySnackbar.dart';
import 'package:flt_expense/Widget/pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddExpenseController extends GetxController {
  TextEditingController expenseName = TextEditingController();
  TextEditingController purposeName = TextEditingController();
  TextEditingController amountName = TextEditingController(text: "0");
  TextEditingController splitPercent = TextEditingController(text: "0");
  TextEditingController exactSum = TextEditingController(text: "0");
  List<ExpenseTypeListModel> expenseTypeList = List<ExpenseTypeListModel>.empty(growable: true);
  List<ProjectListModel> projectList = List<ProjectListModel>.empty(growable: true);
  Rx<ExpenseTypeListModel> selectedExpenseType = ExpenseTypeListModel(id: "", name: "Select Expense Type").obs;
  RxString selectedExpense = "".obs;
  Rx<DateTime> date = DateTime.now().obs;
  List<String> expType = ["BreakFast", "Dinner", "Lunch"];
  List<int> projectId = [];

  var checkBox = false.obs;
  var processLoading = false.obs;
  var projectLoading = false.obs;
  var radioSelected = 1.obs;
  @override
  void onInit() {
    fetchApi();
    super.onInit();
  }

  fetchApi() {
    getExpenseType();
    getProjectList();
  }

  getExpenseType() async {
    expenseTypeList = await ExpenseApis.getExpenseTypeListApi();
  }

  getProjectList() async {
    projectLoading(true);
    projectList = await ExpenseApis.getProjectListApi();
    projectLoading(false);
  }

  tickClick(ProjectListModel emp) {
    if (!projectId.contains(emp.id)) {
      projectId.add(emp.id);
      emp.checked = true;
    }
  }

  tickUnClick(ProjectListModel emp) {
    if (projectId.contains(emp.id)) {
      projectId.remove(emp.id);
      emp.checked = false;
    }
  }

  setBody() {
    var compPaid = checkBox.value ? "0" : "1";
    return ({
      "expense_type_id": "${selectedExpenseType.value.id}",
      "expense_date": "${dateFormat.format(date.value)}",
      "expense_name": "${expenseName.text}",
      "purpose": "${purposeName.text}",
      "amount": "${amountName.text}",
      "company_paid": "$compPaid",
      "location": "deesa"
    });
  }

  createExpesne() async {
    var body = setBody();
    processLoading(true);
    var res = await ExpenseApis.createExpenseApi(body);
    if (res != null) {
      toastBack(description: "Expense Created successfull").then((value) {
        Get.find<ExpenseListController>().getExpense();
        Get.back();
        processLoading(false);
      });
    } else {
      processLoading(false);
    }
  }
}
