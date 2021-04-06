import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/widgets/appBar.dart';
import 'package:pet_care/widgets/auth_input_widget.dart';
import 'package:pet_care/profile/gender_item.dart';

class EditProfileView extends StatefulWidget {
  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
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
          title: "Your Profile",
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: AppTheme.appPrimary,
                        fontFamily: 'coRegular',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                      backgroundImage: AssetImage('assets/images/user.jpg'),
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
              AuthInput(
                controller: TextEditingController(text: 'Alaa S. Elmaghraby'),
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: 'Full Name',
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Owner',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'coRegular',
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
                controller:
                    TextEditingController(text: 'alaa.sobhy193@gmail.com'),
                suffixIcon: Icon(
                  Icons.email_rounded,
                  color: Colors.grey,
                ),
                label: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 15,
              ),
              AuthInput(
                controller: TextEditingController(text: '01100249647'),
                suffixIcon: Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                label: 'Phone',
                inputType: TextInputType.phone,
              ),
              SizedBox(
                height: 15,
              ),
              AuthInput(
                controller: TextEditingController(text: ' '),
                label: 'About Me',
                inputType: TextInputType.phone,
                maxLines: 3,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppTheme.appPrimary,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'coRegular',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
