import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_stacked_firebase_boilerplate/app.logger.dart';
import 'package:flutter_stacked_firebase_boilerplate/core/services/abstract/auth.service.dart';

///
class FirebaseAuthService implements AuthService {
  ///
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    final logger = getLogger('FirebaseAuthService');
    try {
      await _auth
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then(
        (value) {
          logger.i('login successful. user: $value');
        },
      );
    } on FirebaseAuthException catch (e) {
      logger.w(e.code);
      rethrow;
    }
  }

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

  @override
  Future<bool> get isLogIn {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return Future.value(false);
    }
    return Future.value(true);
  }
}
