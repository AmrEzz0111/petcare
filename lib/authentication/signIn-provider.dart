import 'package:flutter/widgets.dart';
import 'package:pet_care/repositories/auth-repository.dart';

class SignInProvider extends ChangeNotifier {
  var user;
  bool wrongEmail = false;
  bool wrongPassword = false;
  bool signInClicked = false;

  AuthRepository _authRepository = AuthRepository();
  void getSignIn(String username, String password) async {
    wrongEmail = false;
    wrongPassword = false;
    signInClicked = true;

    user = await _authRepository.getSignInEmailAndPassword(username, password);
    if (user == "user-not-found") {
      wrongEmail = true;
    } else if (user == "wrong-password") {
      wrongPassword = true;
    }
    notifyListeners();
  }

  signInWithGoogle() async {
    user = await _authRepository.signInWithGoogle();
    notifyListeners();
  }
}
