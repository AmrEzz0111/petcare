import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/models/pet_model.dart';
import 'package:pet_care/ui/profile/pet_provider.dart';
import 'package:pet_care/widgets/animation_utils.dart';
import 'package:pet_care/widgets/appBar.dart';
import 'package:pet_care/widgets/auth_input_widget.dart';
import 'package:pet_care/widgets/gallary_or_camera_dialog.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart' as date;

class EditPetView extends StatefulWidget {
  final Pet pet;

  const EditPetView({Key key, this.pet}) : super(key: key);
  @override
  _EditPetViewState createState() => _EditPetViewState();
}

class _EditPetViewState extends State<EditPetView> {
  bool ligth1;
  bool ligth2;
  bool ligth3;
  bool ligth4;
  bool ligth5;
  TextEditingController petName, species, breed, weight, birthOfDate;
  String gender;
  var images = [
    'assets/images/male.png',
    'assets/images/female.png',
  ];
  var genderList = ['Male', 'Female'];
  int _value = 0;
  DateTime bithdate = DateTime.now();
  File petImage;

  @override
  void initState() {
    petName = TextEditingController(text: widget.pet.name);
    species = TextEditingController(text: widget.pet.species);
    breed = TextEditingController(text: widget.pet.breed);
    weight = TextEditingController(text: widget.pet.weight);
    birthOfDate = TextEditingController(text: widget.pet.birthOfDate);
    if (widget.pet.gender == 'Male')
      _value = 0;
    else if (widget.pet.gender == 'Female')
      _value = 1;
    else
      _value = 0;
    ligth1 = widget.pet.vaccinated;
    ligth2 = widget.pet.friendlyWithDogs;
    ligth3 = widget.pet.friendlyWithCats;
    ligth4 = widget.pet.friendlyWithKids;
    ligth5 = widget.pet.microchipped;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('=====${widget.pet.id}');
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
          title: "Edit Pet",
        ),
      ),
      body: ChangeNotifierProvider(
        create: (context) => PetProvider(),
        child: Consumer<PetProvider>(
          builder: (context, petProv, _) => SingleChildScrollView(
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
                          backgroundImage: petImage != null
                              ? FileImage(
                                  petImage,
                                )
                              : NetworkImage(
                                  widget.pet.img,
                                ),
                        ),
                        Positioned(
                          bottom: 1,
                          left: 2,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                HeroDialogRoute(
                                  builder: (BuildContext context) =>
                                      CameraOrGallaryDialog(
                                    onSelectImage: (photo) {
                                      setState(() {
                                        petImage = photo;
                                      });
                                    },
                                  ),
                                ),
                              );
                            },
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
                    controller: petName,
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
                    controller: species,
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
                    controller: breed,
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
                    controller: weight,
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
                  SizedBox(
                    height: 50,
                    child: Wrap(
                      spacing: 40,
                      children: List<Widget>.generate(
                        genderList.length,
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
                                    color: _value == index
                                        ? Colors.white
                                        : AppTheme.appDark,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    genderList[index],
                                    style: TextStyle(
                                      color: _value == index
                                          ? Colors.white
                                          : Colors.black87,
                                      fontFamily: 'Co',
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            selected: _value == index,
                            selectedColor: AppTheme.appDark,
                            onSelected: (bool value) {
                              setState(() {
                                _value = value ? index : null;
                                gender = genderList[index];
                                print(gender);
                              });
                            },
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(
                                    width: 1,
                                    color: _value == index
                                        ? AppTheme.appDark
                                        : Colors.grey[350])),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(primaryColor: AppTheme.appDark),
                    child: TextField(
                      maxLines: 1,
                      controller: birthOfDate,
                      onTap: () {
                        DatePicker.showDatePicker(
                          context,
                          onConfirm: (dateT) {
                            birthOfDate.text =
                                date.DateFormat('yyyy-MM-dd').format(dateT);

                            this.bithdate = dateT;
                            print(birthOfDate.text);
                          },
                        );
                      },
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontFamily: 'Co',
                      ),
                      decoration: InputDecoration(
                        focusColor: AppTheme.appDark,
                        alignLabelWithHint: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey[300],
                          width: 1,
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: AppTheme.appDark,
                          width: 1,
                        )),
                        labelText: "BirthDate",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                          fontFamily: 'Co',
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                          fontFamily: 'Co',
                        ),
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                        ),
                      ),
                    ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Vaccinated',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'coRegular',
                            color: Colors.black87),
                      ),
                      CupertinoSwitch(
                        activeColor: AppTheme.appDark,
                        value: ligth1,
                        onChanged: (bool value) {
                          setState(() {
                            ligth1 = value;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Friendly with dogs',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'coRegular',
                            color: Colors.black87),
                      ),
                      CupertinoSwitch(
                        activeColor: AppTheme.appDark,
                        value: ligth2,
                        onChanged: (bool value) {
                          setState(() {
                            ligth2 = value;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Friendly with cats',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'coRegular',
                            color: Colors.black87),
                      ),
                      CupertinoSwitch(
                        activeColor: AppTheme.appDark,
                        value: ligth3,
                        onChanged: (bool value) {
                          setState(() {
                            ligth3 = value;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Friendly with kids',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'coRegular',
                            color: Colors.black87),
                      ),
                      CupertinoSwitch(
                        activeColor: AppTheme.appDark,
                        value: ligth4,
                        onChanged: (bool value) {
                          setState(() {
                            ligth4 = value;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Microchipped',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'coRegular',
                            color: Colors.black87),
                      ),
                      CupertinoSwitch(
                        activeColor: AppTheme.appDark,
                        value: ligth5,
                        onChanged: (bool value) {
                          setState(() {
                            ligth5 = value;
                          });
                        },
                      )
                    ],
                  ),
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
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () async {
                      Pet pet = Pet(
                        name: petName.text,
                        species: species.text,
                        breed: breed.text,
                        weight: weight.text,
                        birthOfDate: birthOfDate.text,
                        gender: gender,
                        vaccinated: ligth1,
                        friendlyWithDogs: ligth2,
                        friendlyWithCats: ligth3,
                        friendlyWithKids: ligth4,
                        microchipped: ligth5,
                        id: widget.pet.id,
                        img: widget.pet.img,
                      );
                      await petProv.editPet(pet, petImage);
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppTheme.appDark,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          'Edit Pet',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Co',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}