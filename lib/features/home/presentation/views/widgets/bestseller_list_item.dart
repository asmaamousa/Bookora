import 'package:bookora/constantes.dart';
import 'package:bookora/cores/utils/assets.dart';
import 'package:bookora/cores/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,

                  image: AssetImage(AssetsData.logo),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    "Harry Poter And the global of fire ",
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
                const Text("asmaa mousa", style: Styles.textStyle14),
                const SizedBox(height: 3),
                const BookReting()
              ],
            ),
          ),

          // Column()
        ],
      ),
    );
  }
}

class BookReting extends StatelessWidget {
  const BookReting({super.key});

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