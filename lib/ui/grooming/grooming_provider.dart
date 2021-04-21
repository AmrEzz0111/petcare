import 'package:flutter/widgets.dart';
import 'package:pet_care/models/petServicesModel.dart';
import 'package:pet_care/repositories/pet_features_repository.dart';

class PetGroomingProvider extends ChangeNotifier {
  List<PetServices> groomings;

  PetFeaturesRepository _petFeatureRepository = PetFeaturesRepository();
  PetGroomingProvider() {
    getGroomings();
  }

  getGroomings() async {
    groomings = await _petFeatureRepository.getGroomings();
    notifyListeners();
  }
}
