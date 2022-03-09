import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/gender_picker.dart';

class GenderPick extends StatelessWidget {
  Gender? _gender;
  set gender(Gender value) {
    _gender = value;
  }

  GenderPick(this._gender);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: GenderPickerWithImage(
        onChanged: (Gender? value) {
          _gender = value;
        },
        verticalAlignedText: true,
        selectedGender: Gender.Female,
        selectedGenderTextStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        unSelectedGenderTextStyle:
            TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
        equallyAligned: true,
        animationDuration: Duration(microseconds: 300),
        isCircular: true,
        opacityOfGradient: 0.5,
        padding: const EdgeInsets.all(3),
        size: 90,
        linearGradient: LinearGradient(
            colors: [Color(0xFF3271a8), Color(0xFF8b32a8)],
            tileMode: TileMode.clamp,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.0, 1.0]),
      ),
    );
  }
}
