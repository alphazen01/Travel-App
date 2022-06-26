import 'package:demo/screens/utilitis/button_color.dart';
import 'package:demo/screens/utilitis/social_logo_button.dart';
import 'package:demo/screens/utilitis/custom_textfield.dart';
import 'package:demo/screens/utilitis/submit_button.dart';
import 'package:demo/screens/utilitis/textfield_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
 bool istap = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
          child: Container(
               decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/login_back.jpeg"),
              fit: BoxFit.cover
            )
          ),
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
                      "Email sign up",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                        Divider(
                    color: Colors.white.withOpacity(0.5),
                    thickness: 2,
                    indent: 180,
                    endIndent: 180,
                  ),
                   SizedBox(height: 49,),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          CustomTextfield(
                            readOnly: false,
                            obscureText: false,
                            title:"Full Name" ,
                            Controller: nameController, 
                            color: TextfieldColor.textfieldColor
                            ),
                             SizedBox(
                            height: 15,
                          ),
                          CustomTextfield(
                            readOnly: false,
                            obscureText: false,
                            title: "Your email address",
                            Controller: emailController,
                            color: TextfieldColor.textfieldColor
                          ),
                           SizedBox(
                            height: 15,
                          ),
                          IntlPhoneField(
                            controller: phoneController,
                            style: TextStyle(color: Colors.white),
                            initialCountryCode: 'BD',
                            onChanged: (phone) {
                                print(phone.completeNumber);
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                            
                              hintText: " Phone  ",
                                hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              
                                border: OutlineInputBorder(
                                  
                              borderRadius: BorderRadius.circular(27.5),
                            ),
                              disabledBorder: InputBorder.none,
                              
                          focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                              
                            ),
                          ),
                           CustomTextfield(
                                Controller: passwordController, 
                                color: ButtonColor.socialLogoButtonColor, 
                                title: "Password", 
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
                              ),
                           SizedBox(
                            height: 15,
                          ),
                          CustomTextfield(
                            readOnly: false,
                            obscureText: false,
                            Controller: confirmPasswordController, 
                            color: TextfieldColor.textfieldColor, 
                            title: "Confirm password"
                          )
                        ],
                      ),
                    ),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child:  SubmitButton(
                      onTap: (){},
                     title: "Continue",
                     color:ButtonColor.submitButtonColor , 
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                  
                  ],
                ),
                            
                ],
              ),
            ),
          ),
        )
      ),
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

