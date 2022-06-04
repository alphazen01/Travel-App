import 'package:demo/screens/welcome/profile.dart';
import 'package:demo/widgets/white_button.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({ Key? key }) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                                    TextFormField(
                                      
                                      decoration: InputDecoration(
                                        filled: true,
                                       fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                                        labelStyle: TextStyle(color: Colors.white,),
                                        hintText: "Your email address",
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                           border: OutlineInputBorder(
                                             borderSide: BorderSide(color: Colors.teal) ,
                                             
                                          borderRadius: BorderRadius.circular(27.5),
                                        ),
                                        disabledBorder: InputBorder.none,
                                         focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                        
                                        
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      obscureText: !istap,
                                      decoration: InputDecoration(
                                        filled: true,
                                       fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                                        hintText: "A secure password",
                                         hintStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: _togglePasswordView,
                                          child: Icon(istap
                                              ? Icons.visibility
                                              : Icons.visibility_off,color: Colors.white,),
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
                                  ],
                                ),
                              ),
                          SizedBox(height: 40,),
                         SizedBox(
                           width: 150,
                           height: 50,
                           child: ElevatedButton(
                             onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));
                             }, 
                             child: Text("Continue"),
                              style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            primary: Color(0xff08BA64)
                               ),
                            ),
                         ),
                          TextButton(
                           onPressed: (){}, 
                           child:  Text(
                               "Forgot password?",
                               style: TextStyle(
                                 color: Color(0xff08BA64)
                               ),
                             ),
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

