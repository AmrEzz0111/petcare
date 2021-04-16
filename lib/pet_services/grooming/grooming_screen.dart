import 'package:flutter/material.dart';
import 'package:pet_care/pet_services/grooming/grooming_details_screen.dart';
import 'package:pet_care/widgets/appBar.dart';
import 'package:pet_care/widgets/veterinarian_item.dart';

class GroomingScreen extends StatefulWidget {
  @override
  _GroomingScreenState createState() => _GroomingScreenState();
}

class _GroomingScreenState extends State<GroomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.grey,
            ),
          ),
          evaluation: 0.5,
          title: "Grooming service",
        ),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => GroomingDetailScreen(),
              ),
            );
          },
          child: VeterinarianItem(),
        );
      }),
    );
  }
}
