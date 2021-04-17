import 'package:flutter/material.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/ui/profile/my_pet_item.dart';

class MyPetView extends StatefulWidget {
  @override
  _MyPetViewState createState() => _MyPetViewState();
}

class _MyPetViewState extends State<MyPetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'My pets',
            style: TextStyle(
              color: AppTheme.headLine1Color,
              fontFamily: 'Co',
              fontSize: 20,
            ),
          ),
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.add,
                color: AppTheme.appDark,
                size: 25,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return MyPetItem();
                  }),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: AppTheme.appDark,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Add another pet ',
                      style: TextStyle(
                        color: AppTheme.appDark,
                        fontFamily: 'Co',
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
