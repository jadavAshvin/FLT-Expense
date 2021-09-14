// To parse this JSON data, do
//
//     final expenseListResponse = expenseListResponseFromJson(jsonString);

import 'dart:convert';

ExpenseListResponse expenseListResponseFromJson(String str) => ExpenseListResponse.fromJson(json.decode(str));

String expenseListResponseToJson(ExpenseListResponse data) => json.encode(data.toJson());

class ExpenseListResponse {
  ExpenseListResponse({
    required this.data,
    required this.message,
  });

  List<ExpenseTypeListModel> data;
  String message;

  factory ExpenseListResponse.fromJson(Map<String, dynamic> json) => ExpenseListResponse(
        data: List<ExpenseTypeListModel>.from(json["data"].map((x) => ExpenseTypeListModel.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class ExpenseTypeListModel {
  ExpenseTypeListModel({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory ExpenseTypeListModel.fromJson(Map<String, dynamic> json) => ExpenseTypeListModel(
        id: json["id"].toString(),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
