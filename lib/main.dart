import 'package:flutter/material.dart';
import 'package:st_store/screens/on_boarding_1.dart';
import 'package:st_store/screens/otp_authentication.dart';
import 'package:st_store/screens/password_recovery_screen.dart';
import 'package:st_store/screens/sign_in_screen.dart';
import 'package:st_store/screens/sign_up_screen.dart';

import 'demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding_1(),
    );
  }
}
