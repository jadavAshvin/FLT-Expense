import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flt_expense/Utils/colors.dart';
import 'package:flt_expense/Utils/texts/textSize.dart';

class CommanTextField extends StatelessWidget {
  // final CommanTextFController addFormController = Get.put(CommanTextFController());

  final TextInputType keyboardType;
  final TextEditingController controller;
  final String labelName;
  final int flag;
  final bool password;
  final bool disabled;
  final bool capitalize;
  final Function? onChanged;

  CommanTextField(this.keyboardType, this.controller, this.labelName, this.flag, this.password,
      {this.disabled = false, this.onChanged, this.capitalize = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        constraints: BoxConstraints(minHeight: 50),
        child: TextFormField(
          toolbarOptions: ToolbarOptions(paste: true),
          style: Theme.of(context).textTheme.subtitle2,
          keyboardType: keyboardType,
          textCapitalization: capitalize ? TextCapitalization.characters : TextCapitalization.none,
          obscureText: password ? true : false,
          enabled: disabled ? false : true,
          controller: controller,
          inputFormatters: [capitalize ? UpperCaseTextFormatter() : NoCaseTextFormatter()],
          textInputAction: flag == 1 ? TextInputAction.next : TextInputAction.done,
          decoration: InputDecoration(
            disabledBorder:
                OutlineInputBorder(borderSide: BorderSide(width: 1, color: dropDownTextColor), borderRadius: BorderRadius.all(Radius.circular(5.0))),
            border: OutlineInputBorder(borderSide: BorderSide(width: 1), borderRadius: BorderRadius.all(Radius.circular(5.0))),
            labelText: labelName,
          ),
          // onFieldSubmitted: (_) => flag == 1 ? addFormController.focus.nextFocus() : addFormController.focus.unfocus(),
          onChanged: onChanged as void Function(String)?,
        ));
  }
}

InputDecoration commonInputDecoration(labelName) {
  return InputDecoration(
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: primaryColor), borderRadius: BorderRadius.all(Radius.circular(15.0))),
      disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: grey), borderRadius: BorderRadius.all(Radius.circular(15.0))),
      border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: primaryColor), borderRadius: BorderRadius.all(Radius.circular(15.0))),
      labelText: "  $labelName",
      labelStyle: TextStyle(color: black));
}

TextStyle commanTextFieldStyle = TextStyle(fontFamily: 'Montserrat-Medium', fontSize: text18);
InputDecoration commonInputDecoration2(labelName) {
  return InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.all(10),
      isDense: true,
      labelText: labelName,
      labelStyle: TextStyle(color: grey, fontSize: text18, fontFamily: 'Montserrat-Medium'));
}

InputDecoration commonInputDecoration3(labelName) {
  return InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.all(10),
      alignLabelWithHint: true,
      isDense: true,
      labelText: labelName,
      labelStyle: TextStyle(color: grey, fontSize: text18, fontFamily: 'Montserrat-Medium'));
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class NoCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text,
      selection: newValue.selection,
    );
  }
}

class MaskedTextInputFormatter extends TextInputFormatter {
  final String mask;
  final String separator;

  MaskedTextInputFormatter({
    required this.mask,
    required this.separator,
  });

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 0) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length && mask[newValue.text.length - 1] == separator) {
          return TextEditingValue(
            text: '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}
