
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
        ScrolBarItem()
      ],
    );
  }
}

