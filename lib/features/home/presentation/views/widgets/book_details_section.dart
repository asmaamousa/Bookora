import 'package:bookora/cores/utils/styles.dart';
import 'package:bookora/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookora/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookora/features/home/presentation/views/widgets/scrol_bar_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
 
 