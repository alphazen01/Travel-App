

import 'package:demo/screens/home.dart';
import 'package:demo/screens/navigation.dart';
import 'package:demo/screens/restaurant%20_details/chechk.dart';
import 'package:demo/screens/restaurant%20_details/restaurant_page.dart';
import 'package:demo/screens/restaurant%20_details/vendor_details.dart';
import 'package:demo/screens/search.dart';
import 'package:demo/screens/splash.dart';
import 'package:demo/screens/welcome/login.dart';
import 'package:demo/screens/welcome/profile.dart';
import 'package:demo/screens/welcome/social_logo.dart';
import 'package:demo/screens/welcome/welcome.dart';
import 'package:demo/widgets/custom_contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

