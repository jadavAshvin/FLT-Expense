import 'dart:async';

import 'package:flt_expense/Apis/AuthApis.dart';
import 'package:flt_expense/Model/loginResponse.dart';
import 'package:flt_expense/Screen/Home/HomeScreen/HomeScreen.dart';
import 'package:flt_expense/Utils/app_constants.dart';
import 'package:flt_expense/Utils/keys.dart';
import 'package:flt_expense/Utils/mySnackbar.dart';
import 'package:flt_expense/Utils/strings.dart';

import 'package:flt_expense/no_internet_connection/no_internet.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var processLoading = false.obs;
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  var isLoading = false.obs;
  var checkBox = false.obs;
  var forgotPass = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  getLoginParameters() {
    return {
      'email': '${emailController.text}',
      'password': '${passController.text}',
    };
  }

  Future submitLoginAPI(BuildContext context) async {
    if (validate()) {
      FocusScope.of(context).requestFocus(new FocusNode());
      isLoading.value = true;
      await isConnected().then((value) {
        if (value) {
          return AuthApis.loginApi(getLoginParameters()).then((value) async {
            if (value != null) {
              isLoading.value = false;

              mySnackBar(value.message);
              await setPrefValue(Keys.AUTH_TOKEN, value.apiToken);
              await setPrefValue(Keys.USERID, value.data.id.toString());
              await setPrefValue(Keys.USERNAME, value.data.name);
              await setPrefValue(Keys.EMAIL, value.data.email);
              await setPrefValue(Keys.MOBILE, value.data.phone);
              await setPrefValue(Keys.PROFILE_IMAGE, value.data.profileImage);
              Get.offAll(HomeScreen());
            }
          });
        }
      });
    }
  }

  bool validate() {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(emailController.text)) {
      mySnackBar(errorValidEmail);
      return false;
    } else if (passController.text.isEmpty) {
      mySnackBar(errorPassword);
      return false;
    }
    /* else if (isSelected.isfalse) {
      mySnackBar(errorRememberMe);
      return false;
    }*/
    return true;
  }
}
