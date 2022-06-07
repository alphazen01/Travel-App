

import 'package:demo/widgets/custom_claimed.dart';
import 'package:flutter/material.dart';

class CustomContact extends StatelessWidget {
  const CustomContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height/2,
      width: double.infinity,
     child: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           SizedBox(height: 10,),
              Text(
              "Contact for Booking",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700
              ),
          ),
          Divider(
             thickness: 1.5,
            color: Colors.grey,
            indent: 160,
            endIndent: 160,
            ),
            SizedBox(height: 25,),
          Text(
            "You have to contact Seagull Hotel and confirm your booking. After confirming the booking, claim discount and enjoy your deal.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
           ),
           SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (){}, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    
                    children: [
                      Image.asset("assets/facebook_white.png",scale: 1,),
                      SizedBox(width: 15,),
                      Text(
                        "Send Email",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                       ),
                      
                    ],
                  ),
                   IconButton(
                     onPressed: (){}, 
                     icon: Icon(Icons.arrow_forward_ios,color:Color(0xff08BA64))
                    )
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (){}, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    
                    children: [
                      Image.asset("assets/facebook_white.png",scale: 1,),
                      SizedBox(width: 15,),
                      Text(
                        "Send Email",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                       ),
                      
                    ],
                  ),
                   IconButton(
                     onPressed: (){}, 
                     icon: Icon(Icons.arrow_forward_ios,color:Color(0xff08BA64))
                    )
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (){}, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    
                    children: [
                      Image.asset("assets/facebook_white.png",scale: 1,),
                      SizedBox(width: 15,),
                      Text(
                        "Send Email",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                       ),
                      
                    ],
                  ),
                   IconButton(
                     onPressed: (){}, 
                     icon: Icon(Icons.arrow_forward_ios,color:Color(0xff08BA64))
                    )
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
            ),
          ),
          SizedBox(height: 25,),
          Divider(
            thickness: 1.5,
            color: Colors.grey,
          ),
          SizedBox(height: 25,),
         
              Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SizedBox(
               height: 48,
               child: ElevatedButton.icon(
        onPressed: (){
          _showModalBottomSheetClaimed(BuildContext,context);
        }, 
        icon: Icon(Icons.arrow_back,color:Color(0xff08BA64),), 
        label: Text(
          "Claim Discount",
          style: TextStyle(
            color: Color(0xff08BA64)
          ),
          ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xffD0D0D0).withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
               ),
             ),
            SizedBox(
               height: 48,
               child: ElevatedButton.icon(
        onPressed: (){}, 
        icon: Icon(Icons.phone), 
        label: Text(
          "Call the Hotel",
          style: TextStyle(
            color: Colors.white
          ),
          ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xff08BA64),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
               ),
             ),
           ],
              ),
              SizedBox(height: 10,),
          
        
        
         ],
       ),
     ),
     
    );
  }
   _showModalBottomSheetClaimed(BuildContext,context){
    showModalBottomSheet(
      backgroundColor: Color(0xffE5E5E5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(20),
          topRight: Radius.circular(20)
        )
      ),
        context: context,
        builder: (context) {
          return CustomClaimed();
        },
    );
  }
}
