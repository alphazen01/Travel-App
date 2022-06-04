import 'package:demo/screens/welcome/login.dart';
import 'package:demo/widgets/white_button.dart';
import 'package:flutter/material.dart';

class SocialLogoScreen extends StatelessWidget {
  const SocialLogoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
          child: Container(
               decoration: BoxDecoration(
               image: DecorationImage(
              image: AssetImage("assets/sign_back.jpeg"),
              fit: BoxFit.cover
            )
          ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                   Image.asset("assets/travel_logo.png"),
                          Column(
                            children: [
                              Text(
                        "Sign in to DD",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        color: Colors.white.withOpacity(0.5),
                        thickness: 2,
                        indent: 160,
                        endIndent: 160,
                      ),
                      SizedBox(height: 49,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Row( 
                          children: [
                            Transform.translate(
                              offset: Offset(-15, 0),
                              child: CircleAvatar(
                                radius: 25,
                                child: Image.asset("assets/google.png",scale: 4,),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              "Continue with Google"
                            ),
                          ],
                        ),
                          style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Color(0xffEFEFEF).withOpacity(0.4)
                        ),
                        ),
                    ),
                     SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Row( 
                          children: [
                            Transform.translate(
                              offset: Offset(-15, 0),
                              child: CircleAvatar(
                                radius: 25,
                                child: Image.asset("assets/facebook.png",scale: 4,),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              "Continue with Facebook"
                            ),
                          ],
                        ),
                          style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Color(0xffEFEFEF).withOpacity(0.4)
                        ),
                        ),
                    ),
                                    SizedBox(height: 15,),
                    
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Row( 
                          children: [
                            Transform.translate(
                              offset: Offset(-15, 0),
                              child: CircleAvatar(
                                radius: 25,
                                child: Image.asset("assets/apple.png",scale: 4,),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              "Continue with Apple"
                            ),
                          ],
                        ),
                          style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Color(0xffEFEFEF).withOpacity(0.4)
                        ),
                        ),
                    ),
                     SizedBox(height: 40,),
                    Container(
                      width: 194,
                      height: 46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEEEFED).withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(18),
                      ),
                      child: ElevatedButton(
                        onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>LogInScreen()));
                        }, 
                        child: Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Color(0xffEEEFED).withOpacity(0.7)
                          ),
                        ),
                          style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            
                        borderRadius: BorderRadius.circular(18),
                        ),
                        primary: Color(0xffEEEFED).withOpacity(0.1)
                        ),
                        ),
                    ),
                            TextButton(
                             onPressed: (){}, 
                             child:  Text(
                                 "Skip for now",
                                 style: TextStyle(
                                   color: Color(0xffEEEFED).withOpacity(0.7)
                                 ),
                               ),
                            )
                            
                            ],
                          ),
                              
                  ],
                ),
              ),
            ),
          ),
        )
      
      
      
      
      
      
      
      
      
      
        
       
       
      ),
    );






  
  }
}
