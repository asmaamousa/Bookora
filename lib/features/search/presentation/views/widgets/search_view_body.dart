import 'package:bookora/cores/utils/styles.dart';
import 'package:bookora/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:bookora/features/search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
            CustomSearchTextfield(),
            SizedBox(
              height: 12,
            ),
  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Text("search result",
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
        ),

        Expanded(child: SearchResultList())
    ],);
  }

 
}

