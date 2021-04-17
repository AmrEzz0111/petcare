import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/ui/profile/gender_item.dart';
import 'package:pet_care/widgets/appBar.dart';
import 'package:pet_care/widgets/auth_input_widget.dart';

class AddPetDetails extends StatefulWidget {
  @override
  _AddPetDetailsState createState() => _AddPetDetailsState();
}

class _AddPetDetailsState extends State<AddPetDetails> {
  bool ligth = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          title: "Add Pet Details",
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: AppTheme.appDark,
                        fontFamily: 'Co',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/cat.jpg'),
                    ),
                    Positioned(
                      bottom: 1,
                      left: 2,
                      child: Container(
                        height: 57,
                        width: 126,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(70),
                                bottomLeft: Radius.circular(70))),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 35,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'General Information',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Co',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25,
              ),
              AuthInput(
                controller: TextEditingController(text: 'Shani'),
                suffixIcon: Icon(
                  Icons.pets_rounded,
                  color: Colors.grey,
                ),
                label: "Pet's Name",
              ),
              SizedBox(
                height: 15,
              ),
              AuthInput(
                controller: TextEditingController(text: 'Cat'),
                suffixIcon: Icon(
                  Icons.api,
                  color: Colors.grey,
                ),
                label: "Species of your pet",
              ),
              SizedBox(
                height: 15,
              ),
              AuthInput(
                controller: TextEditingController(text: 'Ragdoll cat'),
                suffixIcon: Icon(
                  Icons.category_rounded,
                  color: Colors.grey,
                ),
                label: "Breed",
              ),
              SizedBox(
                height: 15,
              ),
              AuthInput(
                controller: TextEditingController(text: '5 kg'),
                suffixIcon: Icon(
                  Icons.confirmation_num,
                  color: Colors.grey,
                ),
                label: "Weight",
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Gender',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Co',
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GenderItem(),
              SizedBox(
                height: 15,
              ),
              AuthInput(
                controller: TextEditingController(text: 'Feb 25, 2018'),
                suffixIcon: Icon(
                  Icons.calendar_today_rounded,
                  color: Colors.grey,
                ),
                label: "Date of birth",
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Additional Information',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Co',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              buildSwitch('Vaccinated'),
              SizedBox(
                height: 15,
              ),
              buildSwitch('Friendly with dogs'),
              SizedBox(
                height: 15,
              ),
              buildSwitch('Friendly with cats'),
              SizedBox(
                height: 15,
              ),
              buildSwitch('Friendly with kids'),
              SizedBox(
                height: 15,
              ),
              buildSwitch('Microchipped'),
              SizedBox(
                height: 25,
              ),
              Text(
                'Remainders',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Co',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Add vaccines, haitcuts, pills, estrus, etc.',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Co',
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildSwitch(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontFamily: 'coRegular', color: Colors.black87),
        ),
        CupertinoSwitch(
          activeColor: AppTheme.appDark,
          value: ligth,
          onChanged: (bool value) {
            setState(() {
              ligth = value;
            });
          },
        )
      ],
    );
  }
}
