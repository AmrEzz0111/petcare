import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/widgets/appBar.dart';
import 'package:pet_care/widgets/veterinarian_item.dart';

class VeterinarianView extends StatefulWidget {
  @override
  _VeterinarianViewState createState() => _VeterinarianViewState();
}

class _VeterinarianViewState extends State<VeterinarianView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          title: "",
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppTheme.appDark,
                      size: 20,
                    ),
                    Text(
                      'Map',
                      style: TextStyle(
                        color: AppTheme.appDark,
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
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return VeterinarianItem();
          }),
    );
  }
}
