import 'package:flutter/material.dart';
import 'package:pet_care/profile/add_pet_details.dart';
import 'package:pet_care/profile/edit_profile_view.dart';
import 'package:pet_care/style.dart';
import 'package:pet_care/widgets/appBar.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          evaluation: 0,
          title: "Profile",
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EditProfileView()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: AppTheme.appPrimary,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Edit',
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
      body: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 10,
                      offset: Offset(0.0, 0.75)),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/user.jpg'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Alaa S. Elmaghraby',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'coRegular',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'alaa.sobhy193',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'coRegular',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  buildColumn(
                    'My Pets',
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/paw.png',
                        color: AppTheme.appPrimary,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AddPetDetails()));
                    },
                    child: buildColumn(
                      'Add Pet Details',
                      Icon(
                        Icons.description_rounded,
                        color: AppTheme.appPrimary,
                        size: 20,
                      ),
                    ),
                  ),
                  buildColumn(
                      'Help',
                      Icon(
                        Icons.help_outline_rounded,
                        color: AppTheme.appPrimary,
                        size: 20,
                      )),
                  buildColumn(
                      'Log Out',
                      Icon(
                        Icons.exit_to_app_rounded,
                        color: AppTheme.appPrimary,
                        size: 20,
                      )),
                ],
              ))
        ],
      ),
    );
  }

  buildColumn(String title, Widget icon) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: AppTheme.appColor,
                  child: icon,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'coRegular',
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            )
          ],
        ),
        Divider(
          color: Colors.grey[300],
          height: 40,
        )
      ],
    );
  }
}
