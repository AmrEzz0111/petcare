import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/services/auth-service.dart';

class AuthRepository {
  AuthService _authService = AuthService();
  Future signInEmailAndPassword(String email, String password) {
    return _authService.signInEmailAndPassword(email, password);
  }

  Future signInWithGoogle() {
    return _authService.signInWithGoogle();
  }

  Future signUp(String email, String password, UserModel user) {
    return _authService.signUp(email, password, user);
  }
}
