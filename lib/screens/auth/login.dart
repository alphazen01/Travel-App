import 'package:demo/screens/navigation.dart';
import 'package:demo/screens/user_about/profile.dart';
import 'package:demo/screens/utilitis/button_color.dart';
import 'package:demo/screens/utilitis/custom_textfield.dart';
import 'package:demo/screens/utilitis/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signUp() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      var authCredential = userCredential.user;
      print(authCredential!.uid);
      if (authCredential.uid.isNotEmpty) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ProfileScreen()));
      } else {
        Fluttertoast.showToast(msg: "Something is Wrong");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        Fluttertoast.showToast(msg: "The password provided is too weak.");
      } else if (e.code == "email-already-in-use") {
        Fluttertoast.showToast(
            msg: "The account already exists for that email.");
      }
    } catch (e) {
      print(e);
    }
  }

  bool istap = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/login_back.jpeg"),
                      fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Image.asset("assets/travel_logo.png"),
                    Column(
                      children: [
                        Text(
                          "Email sign in",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Divider(
                          color: Colors.white.withOpacity(0.5),
                          thickness: 2,
                          indent: 180,
                          endIndent: 180,
                        ),
                        SizedBox(
                          height: 49,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              CustomTextfield(
                                readOnly: false,
                                obscureText: false,
                                title: "Your email address",
                                Controller: emailController,
                                color: Color(0xffF7F7F7).withOpacity(0.4),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomTextfield(
                                Controller: passwordController, 
                                color: ButtonColor.socialLogoButtonColor, 
                                title: "A secure password", 
                                obscureText:!istap , 
                                readOnly: false,
                                icon: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(
                                      istap
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                                  ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: SubmitButton(
                            onTap: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                            builder: (_) => NavigationScreen()));
                            },
                            title: "Continue",size: 16, 
                            color: ButtonColor.submitButtonColor,
                             
                            )
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(color: Color(0xff08BA64),
                            fontSize: 18
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  void _togglePasswordView() {
    // if (ishiddenPassword == true) {
    //   ishiddenPassword = false;
    // } else {
    //   ishiddenPassword = true;
    // }
    setState(() {
      istap = !istap;
    });
  }
}
