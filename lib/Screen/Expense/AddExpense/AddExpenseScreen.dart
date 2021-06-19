import 'package:flt_expense/Screen/Expense/AddExpense/AddExpenseController.dart';
import 'package:flt_expense/Screen/Expense/AddExpense/ProjectAllocationDailog.dart';
import 'package:flt_expense/Utils/CommonAppBar/commonAppbar.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/images.dart';
import 'package:flt_expense/Utils/strings.dart';
import 'package:flt_expense/Widget/CommonTextField.dart';
import 'package:flt_expense/Widget/CustomButton.dart';
import 'package:flt_expense/Widget/commonDropDown.dart';
import 'package:flt_expense/Widget/pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AddExpenseScreen extends GetView<AddExpenseController> {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        centerTitle: false,
        title: txtNewExpenses,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              15.heightBox,
              txtexpType.text.normal.medium.make(),
              5.heightBox,

              CommanDropDown(
                child: DropdownButton<String>(
                  isExpanded: true,
                  elevation: 0,
                  iconSize: 27.0,
                  iconEnabledColor: black,
                  underline: SizedBox(),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: primaryColor,
                  ),
                  // style: commanTextFieldStyle,
                  items: controller.expType
                      .map(
                        (String e) => new DropdownMenuItem<String>(
                          value: e,
                          child: Text(
                            e.toString(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: commanTextFieldStyle,
                          ),
                        ),
                      )
                      .toList(),
                  // value: controller.selectedExpense.value,
                  hint: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      txtexpType,
                    ),
                  ),
                  onChanged: (value) {
                    controller.selectedExpense.value = value!;
                  },
                ),
              ),
              15.heightBox,
              "Date".text.normal.medium.make(),
              5.heightBox,
              CustomTabWithIcon(
                icon: Icons.calendar_today_outlined,
                title: "${dateFormatAlphabet.format(controller.date.value)}",
                onTap: () async {
                  controller.date.value = await selectDate(context, currentDate: controller.date.value);
                },
                color: true,
              ),
              15.heightBox,
              txtexpName.text.normal.medium.make(),
              5.heightBox,
              TextFormField(
                controller: controller.expenseName,
                decoration: commonInputDecoration2(txtexpName),
              ),
              15.heightBox,
              txtPurpose.text.normal.medium.make(),
              5.heightBox,
              TextFormField(
                controller: controller.purposeName,
                decoration: commonInputDecoration2(txtPurpose),
              ),
              15.heightBox,
              txtAmount.text.normal.medium.make(),
              5.heightBox,
              TextFormField(
                controller: controller.amountName,
                decoration: commonInputDecoration2(txtAmount),
              ),
              15.heightBox,
              InkWell(
                onTap: () {
                  controller.checkBox.toggle();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    txtCompPaid.text.color(primaryColor).lg.make(),
                    5.widthBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: primaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                        width: 20,
                        height: 20,
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.transparent,
                          ),
                          child: Obx(() => Checkbox(
                                activeColor: primaryColor,
                                checkColor: white,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                visualDensity: VisualDensity.standard,
                                value: controller.checkBox.value,
                                tristate: false,
                                onChanged: (bool? isChecked) {
                                  controller.checkBox(isChecked!);
                                },
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              15.heightBox,
              txtLocation.text.normal.medium.make(),
              5.heightBox,
              CustomTabWithIcon(
                icon: CupertinoIcons.location_fill,
                title: "Boston",
                onTap: () {},
                color: true,
              ),
              15.heightBox,
              txtSplitWith.text.normal.medium.make(),
              5.heightBox,
              // CustomButtonDisabled(txtProjectAllocation, 0, 0),
              CustomButtonBorder(
                child: txtProjectAllocation.text.color(primaryColor).lg.bold.make(),
                left: 0,
                right: 0,
                onTap: () {
                  Get.dialog(
                    ProjectAllocationDailog(),
                    useSafeArea: true,
                  );
                },
              ),
              15.heightBox,
              CustomButtonBorder(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      Images.CAMERA_HOME,
                      color: primaryColor,
                      height: 25,
                    ),
                    5.widthBox,
                    txtAddReceipt.text.color(primaryColor).lg.bold.make(),
                  ],
                ).paddingZero,
                left: 0,
                right: 0,
                onTap: () {},
              ),
              50.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
