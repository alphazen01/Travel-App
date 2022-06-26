import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({ Key? key }) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  bool isTap1=false;
  bool isTap2=false;
  bool isTap3=false;
  bool isTap4=false;




  List <String>image = [
    "assets/segull.png",
    "assets/vistabay.png",
    "assets/abc.png",
  ];
  List<String>title= [
    "Seagull Hotel",
    "VistaBay Resort",
    "Abc Hotel",
  ];
   List<String>location= [
    "Cox’s Bazaar",
    "Chattogram",
    "Dhaka",
  ];
   List<String>category1= [
    "Hotel",
    "Resort",
    "Resort",
  ];
   List<String>category2= [
    "Restaurant",
    "Restaurant",
    "Restaurant",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
    
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, John!",
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),
                          Text(
                            "Active",
                            style: TextStyle(
                              color: Color(0xff08BA64),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                   
                    children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset("assets/youtube_with.png",color: Colors.grey,),
                    ),
                    SizedBox(width: 10,),
                      Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.notifications_outlined)
                    ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
             Container(
                  height: 90,
                  color: Color(0xffE5E5E5),
                  child: ListView(
                    
                    scrollDirection: Axis.horizontal,
                    children: [
                       Column(
                         children: [
                           SizedBox(
                            height: 65,
                            width: 85,
                            child: ElevatedButton(
                              onPressed: (){
                               setState(() {
                                isTap1=!isTap1;
                                isTap2=false;
                                isTap3=false;
                                isTap4=false;
                                // if (isTap1==false) {
                                //   print("Yes");
                                // }else{
                                //   print("no");
                                // }
                               });
                              }, 
                              child: Image.asset("assets/hotel.png"),
                              style: ElevatedButton.styleFrom(
                                side:BorderSide(
                                  color: isTap1==false?Colors.white:Color(0xff08BA64),
                                   
                                  width: 2
                                ) ,
                                  primary: Colors.white,
                                  
                                ),
                              ),
                           ),
                           Text(
                             "Hotel/Resort",
                             style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                         ],
                       ),
                       SizedBox(width: 35,),
                       Column(
                         children: [
                           SizedBox(
                            height: 65,
                            width: 85,
                            child: ElevatedButton(
                              onPressed: (){
                                setState(() {
                                isTap1=false;
                                isTap2=!isTap2;
                                isTap3=false;
                                isTap4=false;
                               });
                              }, 
                              child: Image.asset("assets/restaurant.png"),
                              style: ElevatedButton.styleFrom(
                                 side:BorderSide(
                                  color: isTap2==false? Colors.white:Color(0xff08BA64),
                                  width: 2
                                ) ,
                                  primary: Colors.white
                                ),
                              ),
                           ),
                           Text(
                             "Restaurant",
                             style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                         ],
                       ),
                      SizedBox(width: 35,),
                        Column(
                         children: [
                           SizedBox(
                            height: 65,
                            width: 85,
                            child: ElevatedButton(
                              onPressed: (){
                                 setState(() {
                                isTap1=false;
                                isTap2=false;
                                isTap3=!isTap3;
                                isTap4=false;
                               });
                              }, 
                              child: Image.asset("assets/cruise.png"),
                              style: ElevatedButton.styleFrom(
                                 side:BorderSide(
                                  color: isTap3==false? Colors.white:Color(0xff08BA64),
                                  width: 2
                                ) ,
                                  primary: Colors.white
                                ),
                              ),
                           ),
                           Text(
                             "Cruise",
                             style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                         ],
                       ),
                      SizedBox(width: 35,),
                        Column(
                         children: [
                           SizedBox(
                            height: 65,
                            width: 85,
                            child: ElevatedButton(
                              onPressed: (){
                                 setState(() {
                                isTap1=false;
                                isTap2=false;
                                isTap3=false;
                                isTap4=!isTap4;
                               });
                              }, 
                              child: Image.asset("assets/flight.png"),
                              style: ElevatedButton.styleFrom(
                                 side:BorderSide(
                                  color: isTap4==false? Colors.white:Color(0xff08BA64),
                                  width: 2
                                ) ,
                                  primary: Colors.white
                                ),
                              ),
                           ),
                           Text(
                             "Flight",
                             style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                         ],
                       ),
                    ],
                  ),
                ),
              SizedBox(height: 20,),
               Container(
                width: 250,
                
                child: Column(
                  children: [
                    Text(
                      "Ongoing Campaigns",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 22
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.grey,
                      indent: 25,
                      endIndent: 180,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.separated(
                  itemCount: image.length,
                  itemBuilder: (BuildContext,index){
                    return Container(
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,
                      ),
                      
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio:1 ,
                      
                        child: Image.asset(image[index],scale: 2.9,fit: BoxFit.cover,)
                        ),
                        
                      Column(
                        children: [
                          SizedBox(height: 5,),
                          Text(
                        title[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on),
                                        Text(
                                          location[index],
                                          style: TextStyle(
                                            color: Colors.grey
                                          ),
                                        )
                                       
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Text(
                                          category1[index],
                                           style: TextStyle(
                                            color: Colors.grey
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        Text(
                                         category2[index] ,
                                           style: TextStyle(
                                            color: Colors.grey
                                          ),
                                        )
                                      ],
                                    ),
                          
                                    SizedBox(height: 15,),
                                      RatingBar.builder(
                                    itemSize: 20,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                      SizedBox(height: 15,),
                                     
                                        
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                           
                           Column(
                        children: [
                          Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Image.asset("assets/discount_badge.png",scale: 1.1,),
                            ),
                            Positioned(
                              top: 5,
                              left: 50,
                              child: Text(
                                "50%",
                                style: TextStyle(
                                  // fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(""),
                          Text(
                            "available offer",
                            style: TextStyle(
                              // fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                      "6,000 tk",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff08BA64)
                      ),
                    ),
                      Text(
                      "12,000 tk",
                      style: TextStyle(
                        fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff08BA64)
                      ),
                    ),
                        ],
                      )
                            ],
                          ),
                        )
                     
                      
                      
                    ],
                ) ,
                    );
                  }, 
                  separatorBuilder:  (BuildContext,index){
                    return SizedBox(height: 20);
                  }, 
                ),
              ),
              SizedBox(height: 10,),


              Container(
                width: 250,
                
                child: Column(
                  children: [
                    Text(
                      "Upcoming Campaigns",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 22
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.grey,
                      indent: 25,
                      endIndent: 180,
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}