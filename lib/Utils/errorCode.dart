import 'package:flt_expense/Utils/pref.dart';
import 'package:flt_expense/Utils/strings.dart';

Map<String, String> errorCode = {
  "missing-client-identifier": "Re-captcha Required",
  "lb_invalid_old_password": "Invalid Old Password",
  "Not Found": "Not Found",
  "lb_error_occured": "Unkown Error Occured",
  "lb_email_already_exists": "Email Already Registered",
  "lb_email_not_found_with_our_system": Pref.getString(txtEmailNotFound),
};
