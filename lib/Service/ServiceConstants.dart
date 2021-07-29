import 'package:flt_expense/Common/accessController.dart';
import 'package:flt_expense/Utils/app_constants.dart';
import 'package:flt_expense/Utils/keys.dart';
import 'package:get/get.dart';

String getToken() {
  return "Bearer " + getPrefValue(Keys.AUTH_TOKEN);
}

Response emptyRes = Response(body: "", statusCode: 700);
AccessController accessController = Get.find<AccessController>();
