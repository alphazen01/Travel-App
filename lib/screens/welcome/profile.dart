import 'package:demo/screens/home.dart';
import 'package:demo/screens/navigation.dart';
import 'package:demo/screens/restaurant%20_details/restaurant_page.dart';
import 'package:demo/screens/welcome/login.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _dobController = TextEditingController();
   final TextEditingController _genderController = new TextEditingController();
  bool _value = true;
  List<String> gender = ["Male", "Female", "Other"];
   var items = ["Male", "Female", "Other",];

    Future<void> _selectDateFromPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year - 20),
        firstDate: DateTime(DateTime.now().year - 30),
        lastDate: DateTime(DateTime.now().year));
    if (picked != null)
      setState(() {
        _dobController.text = "${picked.day}/ ${picked.month}/ ${picked.year}";
      });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/login_back.jpeg"),
            fit: BoxFit.cover
          )
        ),
          child: Container(
            width: double.infinity,
             height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Text(
                       "Almost There!",
                        style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                   ),
                  
                     Padding(
                       padding: const EdgeInsets.only(top: 80),
                       child: Column(
                         children: [
                           Stack(
                             children: [
                               InkWell(
                                 onTap: (){},
                                 child: CircleAvatar(
                                   radius: 60,
                                   backgroundColor: Colors.teal,
                                 ),
                               ),
                                Transform.translate(
                                  offset: Offset(93, 90),
                                  child: CircleAvatar(
                                   radius: 10,
                                   backgroundColor: Colors.white,
                                   ),
                                ),
                             ],
                           ),
                           SizedBox(height: 49,),
                           Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        filled: true,
                                       fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                                        labelStyle: TextStyle(color: Colors.white,),
                                        hintText: "Full Name",
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
                                    IntlPhoneField(
                                      style: TextStyle(color: Colors.white),
                                      initialCountryCode: 'BD',
                                      onChanged: (phone) {
                                          print(phone.completeNumber);
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                       fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                                     
                                        hintText: " Phone ",
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
                                    
                                    TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      readOnly: true,
                                      controller: _dobController,
                                      decoration: InputDecoration(
                                        filled: true,
                                       fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                                        hintText: " Date of Birth ",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                        
                                        suffixIcon: IconButton(
                                          onPressed: () => _selectDateFromPicker(context),
                                          icon: Icon(Icons.calendar_today_outlined,
                                          color: Colors.white.withOpacity(0.4),
                                          ),
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
                                      SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 60,
                                        child:  TextField(
                                          readOnly: true,
                                          style: TextStyle(color: Colors.white.withOpacity(0.4)),
                                        controller: _genderController,
                                        decoration: InputDecoration(
                                          hintText: "Gender",
                                          hintStyle: TextStyle(color: Colors.white,),
                                           border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                        disabledBorder: InputBorder.none,
                                      focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                        filled: true,
                                       fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                                          suffixIcon: PopupMenuButton<String>(
                                            color: Colors.white,
                                           
                                            icon: const Icon(Icons.arrow_drop_down,color: Colors.black,),
                                            onSelected: (String value) {
                                              _genderController.text = value;
                                            },
                                            itemBuilder: (BuildContext context) {
                                              return items
                                                  .map<PopupMenuItem<String>>(
                                                    (String value) {
                                                return new PopupMenuItem(
                                                    child: Column(
                                                    children: [
                                                      new Text(value,),
                                                    ],
                                                    ), value: value);
                                              }).toList();
                                            },
                                          ),
                                        ),
                                      ),
                                      ),
                                      SizedBox(
                                        width: 231,
                                        height: 60,
                                        child:TextFormField(
                                        style: TextStyle(color: Colors.white),  
                                      decoration: InputDecoration(
                                        filled: true,
                                       fillColor: Color(0xffF7F7F7).withOpacity(0.4),
                                        labelStyle: TextStyle(color: Colors.white,),
                                        hintText: "City",
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
                                      ) 
                                      
                                    ],
                                  ),
                                   SizedBox(height: 28,),
                                  Text(
                                    "What do you prefer?",
                                    style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 18
                                  ),
                                  ),
                                  SizedBox(height: 15,),
                                   Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                      height: 34,
                                      child: ElevatedButton(
                                      onPressed: (){
                                       
                                      }, 
                                      child:  Text(
                                          "Mountains",
                                          style: TextStyle(
                                            color:Colors.white
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        primary: Color(0xffF7F7F7).withOpacity(0.4),
                                          ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    SizedBox(
                                      width: 75,
                                      height: 34,
                                      child: ElevatedButton(
                                      onPressed: (){}, 
                                      child:  Text(
                                          "Rivers",
                                          style: TextStyle(
                                            color:Colors.white
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        primary: Color(0xffF7F7F7).withOpacity(0.4),
                                          ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    
                                     SizedBox(
                                      width: 85,
                                      height: 34,
                                      child: ElevatedButton(
                                      onPressed: (){}, 
                                      child:  Text(
                                          "Desert",
                                          style: TextStyle(
                                            color:Color(0xff08BA64)
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        primary: Colors.white
                                          ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                     SizedBox(
                                      width: 65,
                                      height: 34,
                                      child: ElevatedButton(
                                      onPressed: (){}, 
                                      child:  Text(
                                          "sea",
                                          style: TextStyle(
                                            color:Color(0xff08BA64)
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        primary: Colors.white
                                          ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40,),
                                Row(
                                  children: [
                                    Text(
                                    "Enable location for better experience",
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize: 18
                                    ),
                                  ),
                                  Switch(
                                    activeTrackColor:Color(0xff08BA64) ,
                                    activeColor:Colors.white ,
                                    value: _value, 
                                    onChanged: (_value){}
                                  )
                                  ],
                                )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(
                           width: 150,
                           height: 50,
                           child: ElevatedButton(
                             onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (_)=>NavigationScreen()));
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
                               "Skip for now",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                          ) 
                    
                ],
              ),
            ),
          ),
        )










    
       
       
      ),
    );
  }

  void showPopUpMenuAtTap(BuildContext context, TapDownDetails details) {
  showMenu(
    items:[
       PopupMenuItem(
                 child: Text("item 1"),
                 value: 1,
                 ),
                 PopupMenuItem(
                 child: Text("item 1"),
                 value: 2,
                 ),
    ] ,
    context: context,
    position: RelativeRect.fromLTRB(
      details.globalPosition.dx,
      details.globalPosition.dy,
      details.globalPosition.dx,
      details.globalPosition.dy,
    ),
    // other code as above
  );
}
}