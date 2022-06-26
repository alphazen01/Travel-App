import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
   SubmitButton({
    Key? key,
    required this.title,
    required this.color,
    required this.onTap,
    this.icon,
    this.size,
    this.tcolor,
  }) : super(key: key);
  String title;
  Color color;
  Color? tcolor;
  IconData? icon;
  double? size;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize:size,
              color: tcolor 
            ),
          ),
          SizedBox(width: 5,),
          // Icon(icon)
        ],
      ),
      
      style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    primary: color
        ),
    );
  }
}