import 'package:bookora/cores/utils/styles.dart';
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
      ),
     SizedBox(height:30,),
     Text("The Jungle Book",style: Styles.textStyle30,),
       Text("The Jungle Book lll dsgtgrfg",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,color: Colors.grey)),
    ],
    );
  }
}