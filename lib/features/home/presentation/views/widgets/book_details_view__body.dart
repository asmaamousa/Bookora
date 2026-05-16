import 'package:bookora/constantes.dart';
import 'package:bookora/cores/utils/styles.dart';
import 'package:bookora/cores/widgits/custom_button.dart';
import 'package:bookora/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookora/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookora/features/home/presentation/views/widgets/scrol_bar_item.dart';
import 'package:bookora/features/home/presentation/views/widgets/similar_books_scrollview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .11),
          child: ScrolBarItem(),
        ),
        SizedBox(height: 20),
        Text("The Jungle Book", style: Styles.textStyle30),
        SizedBox(height: 4),
        Text(
          "The Jungle Book lll dsgtgrfg",
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 8),
        BookRating(),
        SizedBox(height: 25,),
        BookActions(),
        SizedBox(height: 40,),
        Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text(
            "you can also like",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600
          ),
          ),
        ),
        SizedBox(height: 12,),
        SimilarScrolview()
      ],
    );
  }
}
 
 