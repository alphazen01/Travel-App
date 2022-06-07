import 'package:demo/widgets/custom_container_room.dart';
import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({ Key? key }) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: [
                 Container(
                   width: double.infinity,
                   height: 260,
                   child: Image.asset("assets/person_back.jpeg",fit: BoxFit.fitWidth,)
                   ),
                 
                 
                
                 
        
                ],
              ),
              Transform.translate(
                offset: Offset(0, -20),
                child: Container(
                 
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/1,
                  decoration: BoxDecoration(
                    color: Color(0xffE5E5E5),
                    borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ) 
                  ),
                  child: Container(
                    width:double.infinity,

                    color: Color(0xffE5E5E5),
                    child: Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, -20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                
                                child: Column(
                                  children: [
                                    Transform.translate(
                                      offset: Offset(0, -40
                                      ),
                                      child: Stack(
                                      children: [
                                       InkWell(
                                         onTap: (){},
                                         child: CircleAvatar(
                                           radius: 40,
                                           backgroundColor: Colors.blue,
                                         ),
                                       ),
                                        Transform.translate(
                                          offset: Offset(65, 60),
                                          child: CircleAvatar(
                                           radius: 5,
                                           backgroundColor: Color(0xff08BA64),
                                           ),
                                        ),
                                        
                                        ],
                                      ),
                                    ),
                                     Column(
                                       children: [
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "John Smith",
                                              style: TextStyle(
                                                fontSize: 20
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                           Container(
                                             width: 43,
                                             height: 17,
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(20),
                                               border: Border.all(color:Color(0xff08BA64))
                                               
                                             ),
                                             child: Center(
                                               child: Text(
                                                 "Active",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  color: Color(0xff08BA64)
                                                ),
                                                ),
                                             ),
                                           )
                    
                                          ],
                                         ),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                            "#83GHGNV",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff08BA64)
                                            ),
                                          ),
                                          Text(
                                            "Dhaka, Bangladesh",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey
                                            ),
                                          ),
                                           ],
                                         ),
                                      
                                       ],
                                     ),
                                   
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.only(top: 10),
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            
                            child: Column(
                             
                              children: [
                              
                                 Column(
                                   children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text(
                                              "12",
                                               style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff08BA64)
                                            ),
                                            ),
                                            Text("discounts"),
                                            Text("claimed")
                                          ],
                                        ),
                                         Column(
                                          children: [
                                            Text(
                                              "45k+",
                                               style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff08BA64)
                                            ),
                                            ),
                                            Text("taka saved"),
                                            Text("traveling")
                                          ],
                                        )
                                       
                    
                                      ],
                                     ),
                                     SizedBox(height: 10,),
                                   SizedBox(
                                     width: 147,
                                     height: 50,
                                     child: ElevatedButton(
                                       onPressed: (){}, 
                                       child: Text("Buy Subscription"),
                                       style: ElevatedButton.styleFrom(
                                         primary: Color(0xff08BA64),
                                         shape:RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(40)
                                         )
                                       ),
                                      ),
                                   )
                                  
                                   ],
                                 ),
                               
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                            width: 150,
                            
                            child: Column(
                            children: [
                              Text(
                                "My Discounts",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                                ),
                              ),
                              Divider(
                                thickness: 1.5,
                                color: Colors.grey,
                                indent: 10,
                                endIndent: 100,
                              )
                                ],
                              ),
                              
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 96,
                              height: 38,
                              decoration: BoxDecoration(
                                color: Color(0xffE5E5E5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color:Color(0xff08BA64))
                                
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Show all",
                                      style: TextStyle(
                                        fontSize: 12,
                                      color: Color(0xff08BA64)
                                    ),
                                    ),
                                    SizedBox(width: 10,),
                                    Icon(Icons.arrow_forward_ios,size: 20,)
                                  ],
                                ),
                              ),
                              
                            ),
                            
                            ],
                          ),
                         Container(
                           width: double.infinity,
                           height: 240,
                           color: Color(0xffE5E5E5),
                           child: ListView.separated(
                             itemBuilder: (BuildContext,index){
                               return CustomContainerRoom(
                                    image: "assets/single_room.png", 
                                    tlabel: "Single Room", 
                                    amountLabel: "4,000 tk", 
                                    discountLabel: "7,000 tk", 
                                    parcentageLabel: "40%", 
                                    bedLabel: "1 Bed"
                                );
                             }, 
                             separatorBuilder:  (BuildContext,index){
                               return SizedBox(height: 15,);
                             }, 
                             itemCount: 10
                            ),
                         )
                            ],
                          ),
                          
                          
                          
                        
                    
                    
                    
                        )
                      ],
                    ),
                  )
                ),
              )
            
          ],
        ),
      ),
      
    );
  }
}