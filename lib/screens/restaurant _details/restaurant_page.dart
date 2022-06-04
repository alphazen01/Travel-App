import 'dart:ui';

import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: [
                 Container(
                   width: double.infinity,
                   height: 260,
                   child: Image.asset("assets/restaurent.png",fit: BoxFit.fitWidth,)
                   ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: (){
                          
                        }, 
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                        )
                      ),
                    ),
                  ),
                     Positioned(
                    top: 40,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.more_horiz,color: Colors.white,)
                      ),
                    ),
                  ),
                   Positioned(
                    top: 90,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.photo_library_outlined,color: Colors.white,)
                      ),
                    ),
                  ),
                 Positioned(
                   right: 20,
                   bottom: 30,
                   child: SizedBox(
                    width: 110,
                    height: 36,
                    child: ElevatedButton(
                    onPressed: (){
                 
                    }, 
                    child: Text("Restuarant"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                      ),
                      primary: Colors.grey
                      ),
                      ),
                    ),
                 ),
        
                ],
              ),
              Transform.translate(
                offset: Offset(0, -20),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ) 
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Icon(Icons.star,color: Colors.yellowAccent,),
                             Image.asset("assets/facebook.png",scale: 4,)
                           ],
                         ) ,
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               "Tasty Restaurant",
                               style: TextStyle(
                                 fontSize: 20
                               ),
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Icon(Icons.location_on,color: Colors.grey),
                                 Text(
                                   "Dhaka",
                                   style: TextStyle(
                                     fontSize: 20,
                                     color: Colors.grey
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Text(
                            "Aura Raja Ampat Dive Resort is a hotel in a good neighborhood, which is located at...",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey
                            ),
                          ),
                          TextButton(
                            onPressed: (){}, 
                            child: Text(
                              "Read More..",
                               style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey
                            ),
                            )
                          ),
                          SizedBox(height: 25,),
                         Divider(
                           thickness: 2,
                         ),
                          SizedBox(height: 25,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               children: [
                                 Card(
                                   shape:RoundedRectangleBorder(
                                     borderRadius:BorderRadius.circular(16), 
                                     ) ,
                                   elevation: 5,
                                   child: SizedBox(
                                     width: 80,
                                     height: 65,
                                     child: ElevatedButton(
                                       onPressed: (){}, 
                                       child: Icon(Icons.menu_book,color: Colors.grey,),
                                       style: ElevatedButton.styleFrom(
                                         shape: RoundedRectangleBorder(
                                           borderRadius:BorderRadius.circular(16), 
                                          ),
                                          primary: Colors.white
                                       ),
                                      ),
                                   ),
                                 ),
                                 Text("Menu")
                               ],
                             ),
                             Column(
                               children: [
                                 Card(
                                   elevation: 5,
                                    shape:RoundedRectangleBorder(
                                     borderRadius:BorderRadius.circular(16), 
                                     ) ,
                                   child: SizedBox(
                                     width: 80,
                                     height: 65,
                                     child: ElevatedButton(
                                       onPressed: (){}, 
                                       child: Icon(Icons.phone,color: Colors.grey,),
                                       style: ElevatedButton.styleFrom(
                                         shape: RoundedRectangleBorder(
                                           borderRadius:BorderRadius.circular(16) 
                                          ),
                                          primary: Colors.white
                                       ),
                                      ),
                                   ),
                                 ),
                                 Text("Contact")
                               ],
                             ),
                             Column(
                               children: [
                                 Card(
                                   elevation: 5,
                                    shape:RoundedRectangleBorder(
                                     borderRadius:BorderRadius.circular(16), 
                                     ) ,
                                   child: SizedBox(
                                     width: 80,
                                     height: 65,
                                     child: ElevatedButton(
                                       onPressed: (){}, 
                                       child: Image.asset("assets/online_order.png"),
                                       style: ElevatedButton.styleFrom(
                                         shape: RoundedRectangleBorder(
                                           borderRadius:BorderRadius.circular(16) 
                                          ),
                                          primary: Colors.white
                                       ),
                                      ),
                                   ),
                                 ),
                                 Text("Order Online")
                               ],
                             ),
                           ],
                         ),
                          SizedBox(height: 25,),
                              Container(
                              width: double.infinity,
                              height: 56,
                             
                              child: ElevatedButton(
                              onPressed: (){
                               
                              }, 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                
                                  Text(
                                    "Claim 50% Discount",
                                    style: TextStyle(
                                      fontSize: 18
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Icon(Icons.arrow_forward)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                primary: Color(0xff08BA64)
                              ),
                            ),
                            ),
                            SizedBox(height: 25,),
                             Divider(
                           thickness: 2,
                         ),
                         SizedBox(height: 25,),
                         Image.asset("assets/burger.png",fit: BoxFit.fitWidth,)
                  
                        ],
                      ),
                    ),
                  ),
                ),
              )
            
          ],
        ),
      ),
      
    );
  }
}