import 'package:flutter/material.dart';
import 'package:pet_care/widgets/veterinarian_item.dart';

class SpecialistScreen extends StatefulWidget {
  @override
  _SpecialistScreenState createState() => _SpecialistScreenState();
}

class _SpecialistScreenState extends State<SpecialistScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return VeterinarianItem();
    });
  }
}
