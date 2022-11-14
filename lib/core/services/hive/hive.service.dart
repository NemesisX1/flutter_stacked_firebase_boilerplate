import 'dart:developer';

import 'package:flutter_stacked_firebase_boilerplate/core/models/base.model.dart';
import 'package:flutter_stacked_firebase_boilerplate/core/services/abstract/storage.service.dart';
import 'package:hive_flutter/adapters.dart';

///
class HiveClassName {
  ///
  static const String users = 'users';
}

///
class HiveService implements StorageService {
  @override
  Future<void> clear<T>({required String collection}) {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> delete<T>({required String collection}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<HiveObject> get<HiveObject>({required String collection}) async {
    try {
      await Hive.openBox<HiveObject>(collection);
    } catch (e) {
      log(e.toString());
    }
    final box = Hive.box<HiveObject>(collection);
    final data = box.getAt(0);

    return data!;
  }

  @override
  Future<void> save<HiveObject>(
    HiveObject data, {
    required String collection,
  }) async {
    try {
      await Hive.openBox<HiveObject>(collection);
    } catch (e) {}

    final box = Hive.box<HiveObject>(collection);

    if (box.isNotEmpty) {
      await box.putAt(0, data);
    } else {
      await box.add(data);
    }
  }

  @override
  Future<List<HiveObject>> getAll<HiveObject>({
    required String collection,
  }) async {
    try {
      await Hive.openBox<HiveObject>(collection);
    } catch (e) {}

    final box = Hive.box<HiveObject>(collection);

    final data = box.values.toList();

    return data;
  }
}
