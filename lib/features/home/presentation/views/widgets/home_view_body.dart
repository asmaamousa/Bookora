
import 'package:bookora/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookora/features/home/presentation/views/widgets/scrol_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(

      children: [
        CustomAppBar(),
      FeaturedBookListView()
      ],
    );
  }
}

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

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