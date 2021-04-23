import 'package:flutter/widgets.dart';
import 'package:pet_care/models/petServicesModel.dart';
import 'package:pet_care/models/user_model.dart';
import 'package:pet_care/repositories/pet_features_repository.dart';

class PetGroomingProvider extends ChangeNotifier {
  List<PetServices> groomings;
  Review review;
  UserModel user;

  PetFeaturesRepository _petFeatureRepository = PetFeaturesRepository();
  PetGroomingProvider() {
    getGroomings();
  }

  getGroomings() async {
    groomings = await _petFeatureRepository.getGroomings();
    notifyListeners();
  }

  addReview(Review review, String serviceName, String serviceID) async {
    review =
        await _petFeatureRepository.addReview(review, serviceName, serviceID);
    notifyListeners();
  }
}
