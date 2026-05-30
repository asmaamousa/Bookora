import 'package:bookora/features/home/presentation/views/widgets/scrol_bar_item.dart';
import 'package:flutter/material.dart';

class SimilarScrolview extends StatelessWidget {
  const SimilarScrolview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (index, context) {
          return const ScrolBarItem();
        },
      ),
    );
  }
}
