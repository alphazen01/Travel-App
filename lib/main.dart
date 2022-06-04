

import 'package:demo/screens/restaurant%20_details/restaurant_page.dart';
import 'package:demo/screens/splash.dart';
import 'package:demo/screens/welcome/login.dart';
import 'package:demo/screens/welcome/profile.dart';
import 'package:demo/screens/welcome/social_logo.dart';
import 'package:demo/screens/welcome/welcome.dart';
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
      home: RestaurantScreen(),
    );
  }
}

