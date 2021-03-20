import 'package:flutter/material.dart';
import 'package:pet_care/style.dart';

class GenderItem extends StatefulWidget {
  @override
  _GenderItemState createState() => _GenderItemState();
}

class _GenderItemState extends State<GenderItem> {
  var images = [
    'assets/images/male.png',
    'assets/images/female.png',
  ];
  var gender = ['Male', 'Female'];
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Wrap(
        spacing: 40,
        children: List<Widget>.generate(
          gender.length,
          (int index) {
            return ChoiceChip(
              label: Container(
                width: 118,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      images[index],
                      height: 16,
                      color:
                          _value == index ? Colors.white : AppTheme.appPrimary,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      gender[index],
                      style: TextStyle(
                        color: _value == index ? Colors.white : Colors.black87,
                        fontFamily: 'coRegular',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              selected: _value == index,
              selectedColor: AppTheme.appPrimary,
              onSelected: (bool value) {
                setState(() {
                  _value = value ? index : null;
                });
              },
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                      width: 1,
                      color: _value == index
                          ? AppTheme.appPrimary
                          : Colors.grey[300])),
            );
          },
        ),
      ),
    );
  }
}
