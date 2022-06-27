

import 'package:demo/screens/auth/registration.dart';
import 'package:demo/screens/home/home.dart';
import 'package:demo/screens/navigation.dart';
import 'package:demo/screens/restaurant%20_details/offer/grab_offer.dart';
import 'package:demo/screens/restaurant%20_details/offer/offer_page.dart';
import 'package:demo/screens/user_about/person.dart';
import 'package:demo/screens/restaurant%20_details/restaurant_page.dart';
import 'package:demo/screens/restaurant%20_details/vendor_details.dart';
import 'package:demo/screens/search.dart';
import 'package:demo/screens/splash.dart';
import 'package:demo/screens/auth/login.dart';
import 'package:demo/screens/user_about/profile.dart';
import 'package:demo/screens/auth/social_logo.dart';
import 'package:demo/screens/home/welcome.dart';
import 'package:demo/widgets/custom_claimed.dart';
import 'package:demo/widgets/custom_contact.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

