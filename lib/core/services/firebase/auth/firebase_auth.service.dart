import 'package:flutter_stacked_firebase_boilerplate/core/services/abstract/auth.service.dart';

///
class FirebaseAuthService implements AuthService {
  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {}

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> verifyPhoneWithOtp({
    required String phone,
  }) {
    // TODO: implement verifyPhoneWithOtp
    throw UnimplementedError();
  }

  @override
  Future register<AppUser>(AppUser data) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
