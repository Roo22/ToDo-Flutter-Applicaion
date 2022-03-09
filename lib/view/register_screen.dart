import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:task_session4/componets/gender.dart';
import 'package:task_session4/componets/text_form.dart';
import 'package:task_session4/view/home_screen.dart';
import 'package:task_session4/view/todo_screen.dart';

class RegisterScreen extends  StatelessWidget {
  @override
  String name = '';
  String email = '';
  Gender? _gender;
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'To-Do List',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      backgroundColor: Colors.white38.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                TextForm(labelname: 'Name', text: name),
                SizedBox(
                  height: 25,
                ),
                TextForm(labelname: 'E-mail', text: email),
                SizedBox(
                  height: 25,
                ),
                GenderPick(_gender),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                      formKey.currentState!.save();
                      /*print(name);
                    print(email);
                    print(_gender);*/
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 22),
                    ))
              ],
            ),
          ),
        ),
      ),
    );

  }
}
