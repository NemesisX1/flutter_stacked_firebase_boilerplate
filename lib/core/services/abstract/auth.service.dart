/// Base class for every auth service
abstract class AuthService {
  /// the login function
  Future<void> login({
    required String email,
    required String password,
  });

  /// Handle otp login with phone number
  Future<void> verifyPhoneWithOtp({
    required String phone,
  });

  /// the register function which allows registration process
  Future<dynamic> register<T>(T data);

  /// the logout process
  Future<void> logout();
}
