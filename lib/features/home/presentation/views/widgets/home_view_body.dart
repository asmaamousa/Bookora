
import 'package:bookora/cores/utils/assets.dart';
import 'package:bookora/cores/utils/styles.dart';
import 'package:bookora/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookora/features/home/presentation/views/widgets/bestseller_list_item.dart';
import 'package:bookora/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookora/features/home/presentation/views/widgets/featured_book_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    CustomScrollView(
      slivers: [
SliverToBoxAdapter(
  child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomAppBar(),
          ),
        FeaturedBooksListView(),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text("Best Seller",
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
           
        ],
      ),
),
SliverFillRemaining(
child: Padding(
 padding: const EdgeInsets.symmetric(horizontal: 20),
  child: BestSellerListview(),
),
)
      ],
    );

  }
}

