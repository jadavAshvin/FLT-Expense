import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var processLoading = false.obs;
  var checkBox = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
}
