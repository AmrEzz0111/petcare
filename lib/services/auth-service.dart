import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pet_care/models/doctor_model.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/models/petServicesModel.dart';

class AuthService {
  Future signInEmailAndPassword(String email, String password) async {
    Doctor user;
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email.trim(), password: password)
          .then((d) async {
        var userReference = await FirebaseDatabase.instance
            .reference()
            .child("doctors")
            .child(d.user.uid)
            .once();
        user = Doctor.fromJson(userReference.value);
        user.id = userReference.key;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return e.code;
      } else if (e.code == 'wrong-password') {
        return e.code;
      }
    }

    return user;
  }

  Future<UserModel> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    UserModel savedUser;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        await auth.signInWithCredential(credential).then((d) async {
          savedUser = UserModel(
              email: d.user.email,
              id: d.user.uid,
              name: d.user.displayName,
              img: d.user.photoURL,
              address: 'Ismailia',
              phone: '01100249647',
              userType: 'user',
              pending: false);

          DatabaseReference databaseReference = FirebaseDatabase.instance
              .reference()
              .child("users")
              .child(d.user.uid);
          await databaseReference.set(savedUser.toJson());
          var userSnapshot = await databaseReference.once();
          savedUser = UserModel.fromJson(userSnapshot.value);
          savedUser.id = userSnapshot.key;
          return;
        });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          print(e.code);
        } else if (e.code == 'invalid-credential') {
          print(e.code);
        }
      } catch (e) {
        print(e);
      }
    }
    return savedUser;
  }

  // Future<UserModel> signUp(
  //     String email, String password, UserModel user) async {
  //   UserModel savedUser;
  //   return FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(
  //     email: email.trim(),
  //     password: password,
  //   )
  //       .then((d) async {
  //     DatabaseReference databaseReference = FirebaseDatabase.instance
  //         .reference()
  //         .child("users")
  //         .child(d.user.uid);
  //     await databaseReference.set(user.toJson());
  //     var userSnapshot = await databaseReference.once();
  //     savedUser = UserModel.fromJson(userSnapshot.value);
  //     savedUser.id = userSnapshot.key;
  //     return savedUser;
  //   });
  // }

  Future<UserModel> updateUser(UserModel user, File img) async {
    print(img.path);
    String id;
    id = FirebaseAuth.instance.currentUser.uid;
    if (img == null) {
      DatabaseReference databaseReference =
          FirebaseDatabase.instance.reference().child("users").child(id);
      await databaseReference.update(user.toJson());
      var userSnapshot = await databaseReference.once();
      UserModel updatedUser = UserModel.fromJson(userSnapshot.value);
      return updatedUser;
    } else {
      print(img.path);
      StorageReference storageReference =
          FirebaseStorage().ref().child(img.toString());
      StorageUploadTask uploadTask = storageReference.putFile(img);
      StorageTaskSnapshot storageSnapshot = await uploadTask.onComplete;
      user.img = await storageSnapshot.ref.getDownloadURL();
      DatabaseReference databaseReference =
          FirebaseDatabase.instance.reference().child("users").child(id);
      await databaseReference.update(user.toJson());
      var userSnapshot = await databaseReference.once();
      return UserModel.fromJson(userSnapshot.value);
    }
  }

  Future<dynamic> signUp(String email, String password, var user) async {
    var savedUser;
    String node;
    if (user.runtimeType == Doctor) {
      node = "doctors";
    } else if (user.runtimeType == UserModel) {
      node = "users";
    } else if (user.runtimeType == PetServices) {
      if (user.serviceName == "grooming") {
        node = "groomings";
      } else if (user.serviceName == "pharmacy") {
        node = "pharmacies";
      } else if (user.serviceName == "market") {
        node = "markets";
      } else if (user.serviceName == "training") {
        node = "trainers";
      }
    }
    return FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email.trim(),
      password: password,
    )
        .then((d) async {
      DatabaseReference databaseReference =
          FirebaseDatabase.instance.reference().child(node).child(d.user.uid);
      await databaseReference.set(user.toJson());
      var userSnapshot = await databaseReference.once();
      userSnapshot = await databaseReference.once();
      if (node == "doctors") {
        savedUser = Doctor.fromJson(userSnapshot.value);
      } else if (node == "users") {
        savedUser = UserModel.fromJson(userSnapshot.value);
      } else if (user.runtimeType == PetServices) {
        savedUser = PetServices.fromJson(userSnapshot.value);
      }
      savedUser.id = userSnapshot.key;
      return savedUser;
    });
  }
}
