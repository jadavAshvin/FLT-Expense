import 'package:flt_expense/Screen/Expense/AddExpense/AddExpenseController.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/strings.dart';
import 'package:flt_expense/Utils/texts/font_family.dart';
import 'package:flt_expense/Widget/CommonTextField.dart';
import 'package:flt_expense/Widget/commonDropDown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectAllocationDailog extends GetView<AddExpenseController> {
  const ProjectAllocationDailog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
          ],
        ),
        width: Get.width / 1.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            20.heightBox,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                txtNewExpenses.text.xl.fontFamily(FAMILY_MEDIUM).make()
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  15.heightBox,
                  txtSplitWith.text.medium.fontFamily(FAMILY_MEDIUM).medium.make(),
                  5.heightBox,
                  // CommanDropDown(
                  //   child: DropdownButton<String>(
                  //     isExpanded: true,
                  //     elevation: 0,
                  //     iconSize: 27.0,
                  //     iconEnabledColor: black,
                  //     underline: SizedBox(),
                  //     icon: Icon(
                  //       Icons.keyboard_arrow_down,
                  //       color: primaryColor,
                  //     ),
                  //     // style: commanTextFieldStyle,
                  //     items: controller.projectList
                  //         .map(
                  //           (String e) => new DropdownMenuItem<String>(
                  //             value: e,
                  //             child: Text(
                  //               e.toString(),
                  //               overflow: TextOverflow.ellipsis,
                  //               maxLines: 2,
                  //               style: commanTextFieldStyle,
                  //             ),
                  //           ),
                  //         )
                  //         .toList(),
                  //     // value: controller.selectedExpense.value,
                  //     hint: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  //       child: Text(
                  //         txtProject,
                  //       ),
                  //     ),
                  //     onChanged: (value) {
                  //       controller.selectedExpense.value = value!;
                  //     },
                  //   ),
                  // ),
                  20.heightBox,
                  Container(
                    transform: Matrix4.translationValues(-10, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildRadio(context, 1, label: txtExactSum),
                        buildRadio(context, 2, label: txtSplitBy),
                      ],
                    ),
                  ),
                  5.heightBox,
                  Obx(
                    () => controller.radioSelected.value == 1
                        ? TextFormField(
                            controller: controller.exactSum,
                            decoration: commonInputDecorationText("USD"),
                          )
                        : TextFormField(
                            controller: controller.splitPercent,
                            decoration: commonInputDecorationText("%"),
                          ),
                  ),
                  30.heightBox,
                  RichText(
                      text: TextSpan(children: [
                    "19.26 USD".textSpan.semiBold.color(primaryColor).make(),
                    " of 45.75 USD".textSpan.semiBold.color(black).make(),
                  ])),
                  5.heightBox,
                  RichText(
                      text: TextSpan(children: [
                    "26.49 USD left".textSpan.semiBold.color(grey).make(),
                  ])),
                  25.heightBox,
                  Divider(),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: txtCancel.text.lg.color(buttonColor).makeCentered(),
                        ),
                      ),
                      Container(
                        width: 5,
                        color: grey,
                      ),
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: txtSave.text.lg.color(buttonColor).makeCentered(),
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRadio(BuildContext context, value, {required String label}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // width: 12,
          height: 12,
          child: Obx(() => Radio<int>(
                value: value,
                groupValue: controller.radioSelected.value,
                onChanged: (value) {
                  controller.radioSelected.value = value!;
                  controller.update();
                },
              )),
        ),
        label.text.base.fontFamily(FAMILY_MEDIUM).medium.make(),
      ],
    );
  }
}
