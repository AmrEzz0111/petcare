import 'package:flutter/material.dart';
import 'package:pet_care/widgets/appBar.dart';
import 'package:pet_care/widgets/veterinarian_item.dart';

import 'Trainers_Details.dart';

class TrainersScreen extends StatefulWidget {
  @override
  _TrainersScreenState createState() => _TrainersScreenState();
}

class _TrainersScreenState extends State<TrainersScreen> {
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
          title: "Pet Trainers",
        ),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => TrainersDetailsScreen(),
              ),
            );
          },
          child: VeterinarianItem(),
        );
      }),
    );
  }
}
