import 'package:flutter/widgets.dart';
import 'package:pet_care/repositories/auth-repository.dart';

class SignInProvider extends ChangeNotifier {
  var user;
  bool wrong_email = false;
  bool wrong_password = false;
  bool sign_in_clicked = false;

  AuthRepository _authRepository = AuthRepository();
  void getSignIn(String username, String password) async {
    wrong_email = false;
    wrong_password = false;
    sign_in_clicked = true;

    user = await _authRepository.getSignInEmailAndPassword(username, password);
    if (user == "user-not-found") {
      wrong_email = true;
    } else if (user == "wrong-password") {
      wrong_password = true;
    }
    notifyListeners();
  }
}
