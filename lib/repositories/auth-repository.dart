import 'package:pet_care/services/auth-service.dart';

class AuthRepository {
  AuthService _authService = AuthService();
  Future getSignInEmailAndPassword(String username, String password) {
    return _authService.signInEmailAndPassword(username, password);
  }
}
