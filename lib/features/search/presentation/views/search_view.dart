import 'package:bookora/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
        child: SearchViewBody(),
      )),
    ) ;
  }
}