// To parse this JSON data, do
//
//     final DoctorModel = DoctorModelFromJson(jsonString);

import 'dart:convert';

DoctorModel DoctorModelFromJson(String str) =>
    DoctorModel.fromJson(json.decode(str));

String DoctorModelToJson(DoctorModel data) => json.encode(data.toJson());

class DoctorModel {
  DoctorModel({
    this.doctors,
  });

  List<Doctor> doctors;

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        doctors:
            List<Doctor>.from(json["doctors"].map((x) => Doctor.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "doctors": List<dynamic>.from(doctors.map((x) => x.toJson())),
      };
}

class Doctor {
  Doctor(
      {this.id = "",
      this.price = 0,
      this.address = "",
      this.specialist = "",
      this.yearsOfExp = 0,
      this.firstName = "",
      this.lastName = "",
      this.profilePic = "",
      this.email = "",
      this.username = "",
      this.password = "",
      this.locationDr,
      this.like = const [""],
      this.notLike = const [""],
      this.reviews = const [],
      this.patiants = const [],
      this.daysOfWork = const []});

  String id;
  int price;
  String address;
  String specialist;
  int yearsOfExp;
  String firstName;
  String lastName;
  String profilePic;
  String email;
  String username;
  String password;
  LocationDr locationDr;
  List<String> like;
  List<String> notLike;
  List<Review> reviews;
  List<Patiant> patiants;
  List<DaysOfWork> daysOfWork;
  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        profilePic: json["profile_pic"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        locationDr: LocationDr.fromJson(json["locationDr"]),
        like: List<String>.from(json["like"].map((x) => x)),
        notLike: List<String>.from(json["notLike"].map((x) => x)),
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        patiants: List<Patiant>.from(
            json["patiants"].map((x) => Patiant.fromJson(x))),
        daysOfWork: List<DaysOfWork>.from(
            json["daysOfWork"].map((x) => DaysOfWork.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "address": address,
        "specialist": specialist,
        "yearsOfExp": yearsOfExp,
        "firstName": firstName,
        "lastName": lastName,
        "profile_pic": profilePic,
        "email": email,
        "username": username,
        "password": password,
        "like": List<dynamic>.from(like.map((x) => x)),
        "notLike": List<dynamic>.from(notLike.map((x) => x)),
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
        "patiants": List<dynamic>.from(patiants.map((x) => x.toJson())),
        "daysOfWork": List<dynamic>.from(daysOfWork.map((x) => x.toJson())),
      };
}

class DaysOfWork {
  DaysOfWork({
    this.day = "",
    this.from = 0,
    this.to = 0,
  });

  String day;
  int from;
  int to;

  factory DaysOfWork.fromJson(Map<String, dynamic> json) => DaysOfWork(
        day: json["day"],
        from: json["from"],
        to: json["to"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "from": from,
        "to": to,
      };
}

class LocationDr {
  LocationDr({
    this.lat = 0.0,
    this.long = 0.0,
  });

  double lat;
  double long;

  factory LocationDr.fromJson(Map<String, dynamic> json) => LocationDr(
        lat: json["lat"].toDouble(),
        long: json["long"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
      };
}

class Patiant {
  Patiant({
    this.petId = "",
    this.petOwnerId = "",
    this.petProfilr,
  });

  String petId;
  String petOwnerId;
  List<PetProfilr> petProfilr;

  factory Patiant.fromJson(Map<String, dynamic> json) => Patiant(
        petId: json["petId"],
        petOwnerId: json["petOwnerId"],
        petProfilr: List<PetProfilr>.from(
            json["pet_profilr"].map((x) => PetProfilr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "petId": petId,
        "petOwnerId": petOwnerId,
        "pet_profilr": List<dynamic>.from(petProfilr.map((x) => x.toJson())),
      };
}

class PetProfilr {
  PetProfilr({
    this.date = "",
    this.desc = "",
    this.medicine,
    this.nextAppointment = "",
  });

  String date;
  String desc;
  List<String> medicine;
  String nextAppointment;

  factory PetProfilr.fromJson(Map<String, dynamic> json) => PetProfilr(
        date: json["date"],
        desc: json["desc"],
        medicine: List<String>.from(json["medicine"].map((x) => x)),
        nextAppointment: json["nextAppointment"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "desc": desc,
        "medicine": List<dynamic>.from(medicine.map((x) => x)),
        "nextAppointment": nextAppointment,
      };
}

class Review {
  Review({
    this.reviewerId = "",
    this.review = "",
  });

  String reviewerId;
  String review;

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        reviewerId: json["reviewerID"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "reviewerID": reviewerId,
        "review": review,
      };
}
