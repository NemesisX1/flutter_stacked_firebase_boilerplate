import 'package:uuid/uuid.dart';

/// Basic class to handle all the DTOs
abstract class BaseModel {
  ///
  BaseModel fromJson(Map<String, dynamic> json);

  ///
  Map<String, dynamic> toJson();

  ///

  String makeId();
}
