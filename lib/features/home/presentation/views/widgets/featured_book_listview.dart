import 'package:bookora/features/home/presentation/views/widgets/scrol_bar_item.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height*0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (index,context){
      return const ScrolBarItem();
        }
        ),
    );
  }
}