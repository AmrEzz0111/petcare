import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/repositories/auth-repository.dart';

class AuthenticationProvider extends ChangeNotifier {
  AuthenticationProvider() {
    //getRandomDoctor();
  }
  var user;
  bool wrongEmail = false;
  bool wrongPassword = false;
  bool signInClicked = false;

  AuthRepository _authRepository = AuthRepository();
  signIn(String email, String password, String userType) async {
    wrongEmail = false;
    wrongPassword = false;
    signInClicked = true;

    user =
        await _authRepository.signInEmailAndPassword(email, password, userType);
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

  Future<UserModel> signUp(String email, String password, var user) async {
    user = await _authRepository.signUp(email, password, user);
    UserModel returned = user;
    notifyListeners();
    return returned;
  }

  updateUser(UserModel user, File img) async {
    user = await _authRepository.updateUser(user, img);
    notifyListeners();
  }
}
