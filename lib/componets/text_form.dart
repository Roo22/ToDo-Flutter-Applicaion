import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  String labelname = '';
  String text = '';

  TextForm({required this.labelname, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelname,
          labelStyle: TextStyle(
              color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
          hintText: 'Please Enter your ${labelname} ',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          hintStyle: TextStyle(color: Colors.grey),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return '${labelname} is Required';
          }
        },
        onSaved: (value) {
          text = value!;
        },
      ),
    );
  }
}
