import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/screens/search.dart';
import 'package:demo/screens/welcome/profile.dart';
import 'package:flutter/material.dart';

class CheckScreen extends StatelessWidget {
   CarouselController carouselController = CarouselController();
   CheckScreen({ Key? key }) : super(key: key);
  List<String>title =[
    "akdjfy",
    "ksjdfhy",
    "skdjfyhia",
  ];
  List<Icon>icon =[
    Icon(Icons.set_meal),
    Icon(Icons.home),
    Icon(Icons.arrow_back),
  ];
   List<Widget>container =[
    Container(
      height: 100,
      width: 100,
      color: Colors.purple,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
      Container(
      height: 100,
      width: 100,
      color: Colors.purple,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [

        ButtonBar(
      
          alignment:MainAxisAlignment.end ,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: Text("data")
            ),
            ElevatedButton(
          onPressed: (){}, 
          child: Text("data")
        ),
         ElevatedButton(
          onPressed: (){}, 
          child: Text("data")
        ),
         SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),
         
          ],
        ),
        Container(
          height: 200,
          child: ListView(
            // padding: EdgeInsets.symmetric(vertical: 250),
            scrollDirection: Axis.horizontal,
            children: [
               SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));
            }, 
            child: Text("data")
                 ),
         ),
         SizedBox(width: 10,),
          SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
            }, 
            child: Text("data"),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal
            ),
                 ),
         ),
         SizedBox(width: 10,),
          SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),
         SizedBox(width: 10,),
           SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),
         SizedBox(width: 10,),
          SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),
         SizedBox(width: 10,),
          SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),SizedBox(width: 10,),
           SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),
         SizedBox(width: 10,),
          SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),
         SizedBox(width: 10,),
          SizedBox(
           height: 100,
           width: 100,
           child: ElevatedButton(
            onPressed: (){}, 
            child: Text("data")
                 ),
         ),
            ],
          ),
        )
         




    //       Padding(
    //         padding: const EdgeInsets.only(top: 50),
    //         child: SizedBox(
    //           width: 450,
    //           height: 300,
    //           child: Stack(
    //             children: [
    //               CarouselSlider(
    //                 carouselController: carouselController, // Give the controller
    //                 options: CarouselOptions(
                      
    //                 ),
    //                 items: icon.map((Icon) {
    //                   return Padding(
    //                     padding: EdgeInsets.symmetric(horizontal: 7),
    //                     child: Container(
    //                       color: Colors.white,
    //                     ),
    //                   );
    //                 }).toList(),
    //               ),
    //                Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: IconButton(
    //                   onPressed: () {
    //                     // Use the controller to change the current page
    //                     carouselController.previousPage();
    //                   },
    //                   icon: Icon(Icons.arrow_back),
    //                 ),
    //               ),
    //                  Align(
    //                 alignment: Alignment.centerRight,
    //                 child: IconButton(
    //                   onPressed: () {
    //                     // Use the controller to change the current page
    //                     carouselController.nextPage();
    //                   },
    //                   icon: Icon(Icons.arrow_forward),
    //                 ),
    //               ),
               
              
    //           CarouselSlider(
    //                       options: CarouselOptions(
    //                         height: 300.0
    //                       ),
    //                       items:List<Widget>.generate(2, (index) =>icon[index])
    //                       //  [1,2,3,4,5].map((i) {
    //                       //   return Builder(
    //                       //     builder: (BuildContext context) {
    //                       //       return 
    //                       //       Row(
    //                       //         children: [
    //                       //           InkWell(
    //                       //             onTap: (){
    //                       //               Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
    //                       //             },
    //                       //             child: Container(
    //                       //               height: 150,
    //                       //               width: 50,
    //                       //               color: Colors.red,
    //                       //             ),
    //                       //           ),
    //                       //           SizedBox(width: 20,),
    //                       //           InkWell(
    //                       //             onTap: (){
    //                       //               Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
    //                       //             },
    //                       //             child: Container(
    //                       //               height: 150,
    //                       //               width: 50,
    //                       //               color: Colors.blue,
    //                       //             ),
    //                       //           ),
    //                       //           SizedBox(width: 20,),
    //                       //           InkWell(
    //                       //             onTap: (){
    //                       //               Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
    //                       //             },
    //                       //             child: Container(
    //                       //               height: 150,
    //                       //               width: 50,
    //                       //               color: Colors.teal,
    //                       //             ),
    //                       //           ),
    //                       //           // SizedBox(width: 20,),
    //                       //           // InkWell(
    //                       //           //   onTap: (){
    //                       //           //     Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
    //                       //           //   },
    //                       //           //   child: Container(
    //                       //           //     height: 100,
    //                       //           //     width: 100,
    //                       //           //     color: Colors.black,
    //                       //           //   ),
    //                       //           // ),
    //                       //           // Container(
    //                       //           //   height: 100,
    //                       //           //   width: 100,
    //                       //           //   color: Colors.purple,
    //                       //           // ),Container(
    //                       //           //   height: 100,
    //                       //           //   width: 100,
    //                       //           //   color: Colors.green,
    //                       //           // ),
    //                       //           // Container(
    //                       //           //   height: 100,
    //                       //           //   width: 100,
    //                       //           //   color: Colors.orange
    //                       //           // ),

    //                       //         ],
    //                       //       );
    //                       //     },
    //                       //   );
    //                       // }).toList(),
    //                     ),
    //           Container(
    //             height: 50,
    //             child: GridView.builder(
    //               scrollDirection: Axis.horizontal,
    //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    
    //                 crossAxisCount: 1,
    //                 crossAxisSpacing: 10,
    //                 mainAxisExtent: 150,
    //                 mainAxisSpacing: 8,
                    
    //                 ), 
    //                 itemCount: 3,
    //               itemBuilder: (BuildContext,index){
    //                 return InkWell(
    //                   onTap: (){
    //                    Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
    //                   },
    //                   child: Container(
    //                             width:50,
    //                             height: 50,
    //                             color: Colors.green,
    //                             child: Row(
    //                   children: [
    //                     icon[index],
    //                     Text(title[index]),
    //                   ],
    //                             ),
    //                           ),
    //                 );
    //               }
    //             ),
    //           )
    //          ],
    //  ),
             
     
    //         ),
    //       )
       ]
     )
    );
  }
}