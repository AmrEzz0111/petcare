import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';

class MyPetItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: 220,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.edit,
                    color: AppTheme.appDark,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                      color: AppTheme.appDark,
                      fontFamily: 'Co',
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/cat.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Shani',
                style: TextStyle(
                  color: AppTheme.bgMain,
                  fontFamily: 'Co',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Ragdoll cat',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Co',
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
