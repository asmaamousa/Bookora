import 'package:bookora/cores/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class ScrolBarItem extends StatelessWidget {
  const ScrolBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.25,
      child: AspectRatio(
        
        aspectRatio: 3/4,
        child: Container(
      
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:const DecorationImage(
              fit: BoxFit.fill,
              
              image:  AssetImage(AssetsData.logo))
          ),
        ),
      ),
    );
  }
}