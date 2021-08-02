import 'dart:async';
import 'dart:convert';

import 'package:flt_expense/Apis/AuthApis.dart';
import 'package:flt_expense/Utils/app_constants.dart';
import 'package:flt_expense/Utils/mySnackbar.dart';
import 'package:flt_expense/Utils/strings.dart';

import 'package:flt_expense/no_internet_connection/no_internet.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var processLoading = false.obs;
  FocusNode focus = FocusNode();
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
          return AuthApis.loginApi(getLoginParameters()).then((value) {
            if (value != null) {
              isLoading.value = false;
              var jsonData = value.body;
              if (value.statusCode == 200) {
                mySnackBar(jsonData['message']);
                setData(jsonData);
              } else {
                mySnackBar(jsonData['message']);
              }
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

  void setData(jsonData) {
    setPrefValue(TOKEN, jsonData["api_token"]);
    setPrefValue(ID, jsonData["data"]["id"].toString());
    setPrefValue(NAME, jsonData["data"]["name"]!=null? jsonData["data"]["name"]:"");
    setPrefValue(EMAIL, jsonData["data"]["email"]!=null?jsonData["data"]["email"]:"");
    setPrefValue(PHONE, jsonData["data"]["phone"]!=null?jsonData["data"]["phone"]:"");
    setPrefValue(PROFILE_IMAGE, jsonData["data"]["profile_image"]!=null?jsonData["data"]["profile_image"]:"");
  }
}
