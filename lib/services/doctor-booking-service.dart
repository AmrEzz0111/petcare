import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pet_care/models/doctor_model.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/services/pet_service.dart';
import 'package:pet_care/models/petServicesModel.dart';

class DoctorAndBookingService {
  Future<Doctor> updateDoctor(Doctor user) async {
    String id;
    id = FirebaseAuth.instance.currentUser.uid;
    DatabaseReference databaseReference =
        FirebaseDatabase.instance.reference().child("doctors").child(id);
    print("sdaosssssssssssssssssssssssssss");
    print(user.toJson());
    await databaseReference.update(user.toJson());
    var userSnapshot = await databaseReference.once();
    Doctor updatedUser = Doctor.fromJson(userSnapshot.value);
    return updatedUser;
  }
}
