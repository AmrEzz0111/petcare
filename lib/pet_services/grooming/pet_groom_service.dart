import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

class PetGroomService extends StatefulWidget {
  @override
  _PetGroomServiceState createState() => _PetGroomServiceState();
}

class _PetGroomServiceState extends State<PetGroomService> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200],
                        offset: Offset(5.0, 5.0),
                        blurRadius: 5,
                        spreadRadius: 5),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/path.jpeg'))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Bath & Dry',
                    style: TextStyle(
                        color: AppTheme.bgColor,
                        fontFamily: 'coRegular',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
