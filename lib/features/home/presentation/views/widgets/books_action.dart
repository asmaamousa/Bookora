
import 'package:bookora/constantes.dart';
import 'package:bookora/cores/widgits/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        
        children: [
          Expanded(
            child: CustomButton(
              
              backgroundcolor:Color.fromARGB(255, 164, 196, 222),
              textcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(16),
                bottomLeft: Radius.circular(16)
              ), text: r'19.9"$"',
            ),
          ),
             Expanded(
            child: CustomButton(
              fontsize: 16,
              backgroundcolor: kPrimaryColor,
              textcolor: const Color.fromARGB(255, 96, 6, 6),
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(16),
                bottomRight:  Radius.circular(16)
              ), text: 'Free preview',
            ),
          ),
        ],
      ),
    );
  }
}
