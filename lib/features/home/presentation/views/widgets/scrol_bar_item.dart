import 'package:bookora/cores/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class ScrolBarItem extends StatelessWidget {
  const ScrolBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
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
    );
  }
}
