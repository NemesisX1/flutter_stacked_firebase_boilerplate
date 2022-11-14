import 'package:flutter_stacked_firebase_boilerplate/core/models/base.model.dart';

///
abstract class StorageService {
  ///
  Future<void> save<T>(T data, {required String collection});

  ///
  Future<List<T>> getAll<T>({required String collection});

  ///
  Future<T> get<T>({required String collection});

  ///
  Future<void> clear<T>({required String collection});

  ///
  Future<void> delete<T>({required String collection});
}
