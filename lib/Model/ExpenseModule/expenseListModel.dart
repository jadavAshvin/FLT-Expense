// To parse this JSON data, do
//
//     final expenseListResponse = expenseListResponseFromJson(jsonString);

import 'dart:convert';

ExpenseListResponse expenseListResponseFromJson(String str) => ExpenseListResponse.fromJson(json.decode(str));

String expenseListResponseToJson(ExpenseListResponse data) => json.encode(data.toJson());

class ExpenseListResponse {
  ExpenseListResponse({
    required this.expenseList,
    required this.message,
  });

  List<ExpenseListModel> expenseList;
  String message;

  factory ExpenseListResponse.fromJson(Map<String, dynamic> json) => ExpenseListResponse(
        expenseList: List<ExpenseListModel>.from(json["data"].map((x) => ExpenseListModel.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(expenseList.map((x) => x.toJson())),
        "message": message,
      };
}

class ExpenseListModel {
  ExpenseListModel({
    required this.id,
    required this.userId,
    required this.projectId,
    required this.expenseTypeId,
    required this.expenseDate,
    required this.expenseName,
    required this.purpose,
    required this.amount,
    required this.companyPaid,
    required this.receiptFile,
    required this.location,
    required this.status,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int userId;
  dynamic projectId;
  int expenseTypeId;
  DateTime expenseDate;
  String expenseName;
  String purpose;
  String amount;
  int companyPaid;
  dynamic receiptFile;
  dynamic location;
  int status;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime createdAt;
  DateTime updatedAt;

  factory ExpenseListModel.fromJson(Map<String, dynamic> json) => ExpenseListModel(
        id: json["id"],
        userId: json["user_id"],
        projectId: json["project_id"],
        expenseTypeId: json["expense_type_id"],
        expenseDate: DateTime.parse(json["expense_date"]),
        expenseName: json["expense_name"],
        purpose: json["purpose"],
        amount: json["amount"],
        companyPaid: json["company_paid"],
        receiptFile: json["receipt_file"],
        location: json["location"],
        status: json["status"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "project_id": projectId,
        "expense_type_id": expenseTypeId,
        "expense_date":
            "${expenseDate.year.toString().padLeft(4, '0')}-${expenseDate.month.toString().padLeft(2, '0')}-${expenseDate.day.toString().padLeft(2, '0')}",
        "expense_name": expenseName,
        "purpose": purpose,
        "amount": amount,
        "company_paid": companyPaid,
        "receipt_file": receiptFile,
        "location": location,
        "status": status,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
