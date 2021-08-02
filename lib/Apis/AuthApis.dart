import 'package:flt_expense/Service/HttpService.dart';
import 'package:flt_expense/Service/httpServe.dart';
import 'package:flt_expense/Service/urls.dart';
import 'package:flt_expense/Utils/mySnackbar.dart';
import 'package:flt_expense/Utils/strings.dart';
import 'package:get/get.dart';

class AuthApis {
  static HttpService httpService = HttpServe();

  static Future<Response?> loginApi(body) async {
    Response res = await httpService.postRequest(LOGIN_URL, body);
    if (res.statusCode == 200) {
      return res;
    } else if (res.statusCode == 700) {
      return null;
    } else {
      mySnackbar(title: txtFailed, description: txtInvalidEmail);
      return null;
    }
  }
}
