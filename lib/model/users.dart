import 'package:json_annotation/json_annotation.dart';
part 'users.g.dart';

@JsonSerializable()
class Users{
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  Users({this.id, this.name, this.email, this.gender, this.status});

  factory Users.fromJson(Map<String, dynamic>json) => _$UsersFromJson(json);

  Map<String, dynamic>toJson() => _$UsersToJson(this);
}









/*
  build_runner: ^2.3.2
  dio: ^4.0.6
  flutter_bloc: ^8.1.1
  get_it: ^7.2.0
  json_annotation: ^4.7.0
  json_serializable: ^6.5.4
  retrofit: ^3.3.1
  retrofit_generator: ^4.2.0
  http: ^0.13.5
*/