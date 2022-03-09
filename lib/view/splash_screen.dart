import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:task_session4/view/home_screen.dart';
import 'package:task_session4/view/register_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.network(
            "https://img.freepik.com/free-vector/round-background-with-person-filling-out-form_23-2147610899.jpg?w=740"),
        logoSize: 120,
        showLoader: true,
        loaderColor: Colors.blue,
        title: Text(
          'To-Do List',
          style: TextStyle(
            fontSize: 45,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        loadingText: Text(
          'Loading...',
          style: TextStyle(color: Colors.blue),
        ),
        navigator: RegisterScreen(),
        durationInSeconds: 4,
      ),
    );
  }
}
