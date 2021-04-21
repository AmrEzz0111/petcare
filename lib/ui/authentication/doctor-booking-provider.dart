import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_care/models/doctor_model.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/repositories/auth-repository.dart';
import 'package:pet_care/repositories/dctor-booking-repo.dart';

class DoctorBookingProvider extends ChangeNotifier {
  var user;

  DortorBookingRepo _bookingRepo = DortorBookingRepo();

  updateUser(Doctor user) async {
    user = await _bookingRepo.updateUser(user);
    notifyListeners();
  }
}
