import 'package:bookora/constantes.dart';
import 'package:bookora/cores/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Text(
                    r'$'
                    "19.9",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 198, 45, 34)
                    ),
                  ),
                  Spacer(),
                const  FaIcon(FontAwesomeIcons.solidStar,color:kPrimaryColor,size: 16,),
                  Text("4.8",style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w600
                  ),),
                SizedBox(width: 3,),
                   Text("(255)",style: Styles.textStyle16.copyWith(
                    color: const Color.fromRGBO(137, 136, 136, 1)
                  ),)
                ],
              );
  }
}