import 'package:bookora/features/home/presentation/views/widgets/bestseller_list_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
    
       physics:NeverScrollableScrollPhysics(),
       padding:EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BestSellerListItem(),
      );
    });
  }
}