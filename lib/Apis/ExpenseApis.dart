import 'package:flt_expense/Model/ExpenseModule/expenseTypeListModel.dart';
import 'package:flt_expense/Model/ExpenseModule/projectListModel.dart';
import 'package:flt_expense/Service/HttpService.dart';
import 'package:flt_expense/Service/httpServe.dart';
import 'package:flt_expense/Service/urls.dart';
import 'package:flt_expense/Utils/mySnackbar.dart';
import 'package:flt_expense/Utils/strings.dart';
import 'package:get/get.dart';

class ExpenseApis {
  static HttpService httpService = HttpServe();

  static Future<Response?> getExpenseListApi() async {
    Response res = await httpService.getRequest(EXPENSE_LIST_URL);
    if (res.statusCode == 200) {
      return res;
    } else if (res.statusCode == 700) {
      return null;
    } else {
      mediumToastMessage(title: txtFailed, description: txtInvalidEmail);
      return null;
    }
  }

  static Future<List<ExpenseTypeListModel>> getExpenseTypeListApi() async {
    Response res = await httpService.getRequest(EXPENSE_TYPE_LIST_URL);
    if (res.statusCode == 200) {
      var r = ExpenseListResponse.fromJson(res.body);
      return r.data;
    } else if (res.statusCode == 700) {
      return [];
    } else {
      // mediumToastMessage(title: txtFailed, description: txtInvalidEmail);
      return [];
    }
  }

  static Future<List<ProjectListModel>> getProjectListApi() async {
    Response res = await httpService.getRequest(PROJECTS_URL);
    if (res.statusCode == 200) {
      var r = ProjectResponse.fromJson(res.body);
      return r.data;
    } else if (res.statusCode == 700) {
      return [];
    } else {
      // mediumToastMessage(title: txtFailed, description: txtInvalidEmail);
      return [];
    }
  }

  static Future<Response?> createExpenseApi(body) async {
    Response res = await httpService.postRequest(EXPENSE_LIST_URL, body);
    if (res.statusCode == 201) {
      return res;
    } else if (res.statusCode == 700) {
      return null;
    } else {
      mediumToastMessage(title: txtFailed, description: "Creating expense failed please try again");
      return null;
    }
  }
}
