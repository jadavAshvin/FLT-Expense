import 'package:get/get.dart';
import 'package:flt_expense/Utils/pref.dart';
import 'package:flt_expense/Utils/strings.dart';

String? emailValidator(String? value) {
  if (value!.isEmpty) {
    return Pref.getString(txtEmailEmpty);
  } else if (!value.isEmail) {
    return Pref.getString(txtEmailInvalid);
  } else {
    return null;
  }
}

String? passWordValidator(value) => value!.isEmpty ? Pref.getString(txtPasswordRequired) : null;
String? newpassWordValidator(value) => value!.isEmpty ? Pref.getString(txtNewPassRequired) : null;
String? oldpassWordValidator(value) => value!.isEmpty ? Pref.getString(txtOldPassRequired) : null;
String? otpValidator(value) => value!.isEmpty ? Pref.getString(txtOtpRequired) : null;
String? ssNumberValidator(value) => value!.isEmpty ? Pref.getString(txtSSRequired) : null;
String? nameValidator(value) => value!.isEmpty ? Pref.getString(txtNameRequired) : null;
String? commentValidator(value) => value!.isEmpty ? Pref.getString(txtCommentRequired) : null;
String? amounttValidator(value) => value!.isEmpty ? Pref.getString(txtAmountRequired) : null;
String? hoursValidator(value) => value!.isEmpty ? Pref.getString(txtHoursRequired) : null;
