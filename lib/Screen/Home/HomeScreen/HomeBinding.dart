import 'package:flt_expense/Screen/Home/HomeScreen/homeScreenController.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => HomeScreenController());
  }
}
