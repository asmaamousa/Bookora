import 'package:bookora/cores/utils/assets.dart';
import 'package:bookora/cores/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,

                  image: AssetImage(AssetsData.logo),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  "Harry Poter And the global of fire ",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3),
              const Text("asmaa mousa", style: Styles.textStyle14),
              const SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    r'$'
                    "19.9",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Column()
        ],
      ),
    );
  }
}
