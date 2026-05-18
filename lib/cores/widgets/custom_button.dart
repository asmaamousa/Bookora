
import 'package:bookora/cores/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 final Color backgroundcolor;
 final BorderRadius? borderRadius;
 final Color textcolor;
 final String text;
 final double? fontsize;
  const CustomButton( {
    super.key, required this.backgroundcolor,  this.borderRadius, required this.textcolor, required this.text,this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor:backgroundcolor,
        shape: RoundedRectangleBorder(borderRadius:borderRadius?? BorderRadiusGeometry.circular(16))
      ),
        onPressed: (){}, child: Text(text,style: Styles.textStyle18.copyWith(fontSize: fontsize, color: textcolor,fontWeight: FontWeight.bold),)),
    );
  }
}