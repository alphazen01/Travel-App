import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final Color?color;
  final VoidCallback? onTap;
  final VoidCallback?style;
  final String?image;
  const WhiteButton({
    Key? key,
    this.icon,
    this.label,
    this.color,
    this.onTap,
    this.style,
    this.image
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:50 ,
      child: ElevatedButton(
        onPressed: (){}, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$label",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
             ),
             
             Icon(icon)
          ],
        ),
        
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.5),
          ),
          primary: Color(0xffF7F7F7).withOpacity(0.4)
        ),
       ),
    );
  }
}