import 'package:bookora/cores/utils/styles.dart';
import 'package:bookora/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookora/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookora/features/home/presentation/views/widgets/similar_books_scrollview.dart';
import 'package:bookora/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(width: width),

              SizedBox(height: 40),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
