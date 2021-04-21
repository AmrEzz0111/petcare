import 'dart:io';
import 'package:pet_care/models/doctor_model.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/services/auth-service.dart';
import 'package:pet_care/services/doctor-booking-service.dart';

class DortorBookingRepo {
  DoctorAndBookingService _doctorAndBookingService = DoctorAndBookingService();

  Future updateUser(Doctor user) {
    return _doctorAndBookingService.updateDoctor(user);
  }
}
