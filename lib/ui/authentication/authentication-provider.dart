import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:pet_care/models/doctor_model.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/repositories/auth-repository.dart';

class AuthenticationProvider extends ChangeNotifier {
  var user;
  bool wrongEmail = false;
  bool wrongPassword = false;
  bool signInClicked = false;

  AuthRepository _authRepository = AuthRepository();
  signIn(String email, String password) async {
    wrongEmail = false;
    wrongPassword = false;
    signInClicked = true;

    user = await _authRepository.signInEmailAndPassword(email, password);
    if (user == "user-not-found") {
      print("user ->>>> $user");
      wrongEmail = true;
    } else if (user == "wrong-password") {
      print("user ->>>> $user");
      wrongPassword = true;
    }
    notifyListeners();
  }

  signInWithGoogle() async {
    user = await _authRepository.signInWithGoogle();
    notifyListeners();
    print('====${user.name}');
  }

  signUp(String email, String password, var user) async {
    user = await _authRepository.signUp(email, password, user);
    notifyListeners();
  }

  updateUser(UserModel user, File img) async {
    user = await _authRepository.updateUser(user, img);
    notifyListeners();
  }
}
