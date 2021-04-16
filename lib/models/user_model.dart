class UserModel {
  String phone;
  String name;
  String email;
  String img;
  String address;
  String userType;
  bool pending;
  String id;
  String gender;

  UserModel({
    this.phone = "",
    this.name = "",
    this.email = "",
    this.img =
        "https://firebasestorage.googleapis.com/v0/b/pet-care-29230.appspot.com/o/group.png?alt=media&token=c569d20a-6245-441e-80d8-80d9650ff317",
    this.address = "",
    this.userType = "",
    this.pending,
    this.id,
  });

  UserModel.fromJson(Map<dynamic, dynamic> map)
      : phone = map['phone'].toString() ?? "",
        name = map['name'] ?? "",
        email = map['email'] ?? "",
        img = map['img'] ?? "",
        address = map['city'] ?? "",
        userType = map['userType'] ?? "",
        id = map['id'] ?? "",
        pending = map['pending'] ?? false,
        gender = map['gender'] ?? "";

  Map<String, dynamic> toJson() => {
        'phone': phone,
        'name': name,
        'img': img,
        'email': email,
        'city': address,
        'pending': pending,
        'userType': userType,
        'id': id,
        'gender': gender,
      };
}
