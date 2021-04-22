// To parse this JSON data, do
//
//     final PetServicesModel = PetServicesModelFromJson(jsonString);

import 'dart:convert';

PetServicesModel petServicesModelFromJson(String str) =>
    PetServicesModel.fromJson(json.decode(str));

String petServicesModelToJson(PetServicesModel data) =>
    json.encode(data.toJson());

class PetServicesModel {
  PetServicesModel({
    this.petServices,
  });

  PetServices petServices;

  factory PetServicesModel.fromJson(Map<String, dynamic> json) =>
      PetServicesModel(
        petServices: PetServices.fromJson(json["petServices"]),
      );

  Map<String, dynamic> toJson() => {
        "petServices": petServices.toJson(),
      };
}

const x = 1.0;
const y = 1.0;
Location initialLocation = Location(lat: 1.0, long: 1.0);
List<Review> initialReviews = [Review(autherId: "", review: "")];
List<Product> initialProducts = [
  Product(price: 1.0, productName: "", productPic: "")
];

class PetServices {
  PetServices({
    this.id = "",
    this.email = "",
    this.name = "",
    this.groomingServices = const [""],
    this.serviceName = "",
    this.location,
    this.reviews,
    this.like = const [""],
    this.dislike = const [""],
    this.phone = "",
    this.address = "",
    this.picture =
        "https://firebasestorage.googleapis.com/v0/b/pet-care-29230.appspot.com/o/pet%20service%2Fself-service.png?alt=media&token=7419cb5b-d490-48dc-bbb4-a4dd283d9b18",
    this.products,
    this.rate = 0.0,
  });

  String id;
  String email;
  String name;
  double rate;
  List<String> groomingServices;
  String serviceName;
  Location location;
  List<Review> reviews;
  List<String> like;
  List<String> dislike;
  String phone;
  String address;
  String picture;
  List<Product> products;

  factory PetServices.fromJson(Map<dynamic, dynamic> json) => PetServices(
        id: json["id"],
        email: json["email"],
        name: json["name"],
        rate: json['rate'],
        groomingServices:
            List<String>.from(json["groomingServices"].map((x) => x)),
        serviceName: json["serviceName"],
        location: Location.fromJson(json["Location"]),
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        like: List<String>.from(json["like"].map((x) => x)),
        dislike: List<String>.from(json["dislike"].map((x) => x)),
        phone: json["phone"],
        address: json["address"],
        picture: json["picture"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<dynamic, dynamic> toJson() => {
        "id": id,
        "email": email,
        "name": name,
        'rate': rate,
        "groomingServices": List<dynamic>.from(groomingServices.map((x) => x)),
        "serviceName": serviceName,
        "Location":
            (location != null) ? location.toJson() : initialLocation.toJson(),
        "reviews": (reviews != null)
            ? List<dynamic>.from(reviews.map((x) => x.toJson()))
            : List<dynamic>.from(initialReviews.map((x) => x.toJson())),
        "like": List<dynamic>.from(like.map((x) => x)),
        "dislike": List<dynamic>.from(dislike.map((x) => x)),
        "phone": phone,
        "address": address,
        "picture": picture,
        "products": (products != null)
            ? List<dynamic>.from(products.map((x) => x.toJson()))
            : List<dynamic>.from(initialProducts.map((x) => x.toJson())),
      };
}

class Location {
  Location({
    this.lat = 1.0,
    this.long = 1.0,
  });

  double lat;
  double long;

  factory Location.fromJson(Map<dynamic, dynamic> json) => Location(
        lat: json["lat"].toDouble(),
        long: json["long"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
      };
}

class Product {
  Product({
    this.productName,
    this.price,
    this.productPic,
  });

  String productName;
  double price;
  String productPic;

  factory Product.fromJson(Map<dynamic, dynamic> json) => Product(
        productName: json["productName"],
        price: json["price"].toDouble(),
        productPic: json["productPic"],
      );

  Map<String, dynamic> toJson() => {
        "productName": productName,
        "price": price,
        "productPic": productPic,
      };
}

class Review {
  Review({
    this.autherId,
    this.review,
  });

  String autherId;
  String review;

  factory Review.fromJson(Map<dynamic, dynamic> json) => Review(
        autherId: json["autherId"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "autherId": autherId,
        "review": review,
      };
}
