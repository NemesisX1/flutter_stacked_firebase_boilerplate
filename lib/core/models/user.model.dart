import 'package:flutter_stacked_firebase_boilerplate/core/models/base.model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
part 'user.model.g.dart';

///
@HiveType(typeId: 0)
@JsonSerializable()
class AppUser extends HiveObject implements BaseModel {
  ///
  AppUser({
    this.email,
    this.password,
    this.phone,
    this.username,
  });

  ///
  @HiveField(0)
  final String? email;

  ///
  @HiveField(1)
  final String? phone;

  ///
  @HiveField(2)
  final String? username;

  ///
  @HiveField(3)
  final String? password;

  @override
  Map<String, dynamic> toJson() {
    return _$AppUserToJson(this);
  }

  @override
  AppUser fromJson(Map<String, dynamic> json) {
    return _$AppUserFromJson(json);
  }

  @override
  String makeId() {
    return const Uuid().v4();
  }
}
