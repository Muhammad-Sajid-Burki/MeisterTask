import 'package:flutter/material.dart';
import 'package:meister_task/MeisterTask/CreateProjectScreen.dart';
import 'package:meister_task/MeisterTask/HomeScreen.dart';
import 'package:meister_task/Screens/LoadingScreen.dart';
import 'package:meister_task/Screens/SignIn/SignInScreen.dart';
import 'package:meister_task/Screens/SignUp/AgreementScreen.dart';
import 'package:meister_task/Screens/SignUp/SignUpScreen.dart';
import 'package:meister_task/SplashScreen/onboard.dart';
import 'package:meister_task/extra.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
