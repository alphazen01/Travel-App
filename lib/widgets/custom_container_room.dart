

import 'package:flutter/material.dart';

class CustomContainerRoom extends StatelessWidget {
  final String image;
  final String tlabel;
  final String amountLabel;
  final String discountLabel;
  final String parcentageLabel;
  final String bedLabel;
  const CustomContainerRoom({
    Key? key,
   required this.image,
   required this.tlabel,
   required this.amountLabel,
   required this.discountLabel,
   required this.parcentageLabel,
   required this.bedLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("$image"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2.7,
                  child: Column(
                    children: [
                       Text(
                       "$tlabel",
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.w700
                       ),
                     ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           
                         Text(
                           "A luxurious 2 bed room. With amazing services and luxury...",textAlign: TextAlign.left,
                           style: TextStyle(
                             fontSize: 16,
                             color: Colors.grey,
                            overflow: TextOverflow.ellipsis
                           ),
                         ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                   "$bedLabel",
                                   style: TextStyle(
                                  
                                   ),
                                 ),
                                  Text(
                                   "Night Stay",
                                   style: TextStyle(
                                    
                                   ),
                                 ),
                            ],
                          ),
                          SizedBox(height: 5,)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                       "$parcentageLabel",
                       style: TextStyle(
                         // fontWeight: FontWeight.w700,
                         color: Colors.white,
                       ),
                     ),
                   ),
                ],
              ),
                Column(
               children: [
                 Text(
             "$amountLabel",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w700,
               color: Color(0xff08BA64)
             ),
           ),
             Text(
             "$discountLabel",
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
          
          
        ],
      ),
      
    );
  }
}