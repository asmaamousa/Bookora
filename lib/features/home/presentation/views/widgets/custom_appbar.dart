import 'package:bookora/cores/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Row(
        children: [
          Image.asset(AssetsData.publicLogo, width:50,height: 50,),
           const Spacer(),
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
          
          )
      
        ],
      ),
    );
  }
}