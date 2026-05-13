import 'package:bookora/features/home/presentation/views/widgets/scrol_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
     var width=MediaQuery.of(context).size.width;
    return Column(
    children: [
     
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width*.11),
        child: ScrolBarItem(),
      )
    ],
    );
  }
}