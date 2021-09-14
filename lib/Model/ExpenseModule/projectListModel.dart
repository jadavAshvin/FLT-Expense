// To parse this JSON data, do
//
//     final projectResponse = projectResponseFromJson(jsonString);

import 'dart:convert';

ProjectResponse projectResponseFromJson(String str) => ProjectResponse.fromJson(json.decode(str));

String projectResponseToJson(ProjectResponse data) => json.encode(data.toJson());

class ProjectResponse {
  ProjectResponse({
    required this.data,
    required this.message,
  });

  List<ProjectListModel> data;
  String message;

  factory ProjectResponse.fromJson(Map<String, dynamic> json) => ProjectResponse(
        data: List<ProjectListModel>.from(json["data"].map((x) => ProjectListModel.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class ProjectListModel {
  ProjectListModel({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    this.checked = false,
  });

  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;
  bool checked;
  factory ProjectListModel.fromJson(Map<String, dynamic> json) => ProjectListModel(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
