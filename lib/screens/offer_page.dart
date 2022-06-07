import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({ Key? key }) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  List <String>image = [
    "assets/16taka.png",
    "assets/16taka.png",
    "assets/16taka.png",
    "assets/16taka.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
    
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 180,
                    height: 85,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Column(
                        children: [
                          Icon(Icons.home,color: Colors.black,),
                          Text(
                            "data",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                    ),
                    
                  ),
                  SizedBox(
                    width: 180,
                    height: 85,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Column(
                        children: [
                          Icon(Icons.home,color: Colors.black,),
                          Text(
                            "data",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                    ),
                    
                  ),
                ],
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
                  itemBuilder: (BuildContext,index){
                    return Container(
                      height: 150,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    Text(
                                  "16 Taka Ticket",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    // Text(
                                    //   "Dhaka to Cox’s Bazaar bus ticket only for 16 taka. Spin the wheel to get this lucky discount!",textAlign: TextAlign.left ,
                                        
                                        
                                    //   style: TextStyle(

                                    //     color: Colors.grey
                                    //   ),
                                    // ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                  Text(
                                      "16 December",
                                      style: TextStyle(
                                      color: Colors.grey
                                      ),
                                    ),
                                  SizedBox(height: 15,),
                                  
                                    
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                     
                      
                      
                    ],
                ) ,










                    );
                  }, 
                  separatorBuilder:  (BuildContext,index){
                    return SizedBox(height: 20);
                  }, 
                  itemCount: image.length
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