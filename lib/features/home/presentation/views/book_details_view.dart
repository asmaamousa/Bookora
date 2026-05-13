import 'package:bookora/features/home/presentation/views/widgets/book_details_view__body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            
          leading: IconButton(onPressed: (){

          GoRouter.of(context).pop();
          }, icon: Icon(Icons.close)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: BookDetailsViewBody(),
        ),
      ),
    );
  }
}