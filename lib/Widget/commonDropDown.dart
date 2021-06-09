import 'package:flutter/material.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Widget/CommonTextField.dart';
import 'package:flt_expense/Widget/customCard.dart';

class CommanDropDown extends StatelessWidget {
  final List<DropdownMenuItem> items;
  final Function(dynamic)? onChanged;
  final hint;
  final Widget? hintWidget;
  final selectedValue;
  const CommanDropDown({Key? key, required this.items, required this.onChanged, required this.hint, this.hintWidget, this.selectedValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: DropdownButton(
          isExpanded: true,
          iconSize: 27.0,
          iconEnabledColor: black,
          // value: selectedValue,
          underline: SizedBox(),
          style: Theme.of(context).textTheme.subtitle2!.copyWith(color: black),
          hint: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: hintWidget == null
                ? Text(
                    hint,
                    style: commanTextFieldStyle,
                  )
                : hintWidget,
          ),
          onChanged: onChanged,
          icon: Icon(Icons.keyboard_arrow_down),
          items: items,
        ),
      ),
    );
  }
}

/* 
 hintWidget: Obx(
                    () => Text(
                      addBoqController.selectedUnit.value.name,
                      style: commanTextFieldStyle,
                    ),
                  ),
                  
                   */
