import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,// 30%  من مساحة الشاشة
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: .0),
              child: const CustomBookImage(imageUrl: 'https://plus.unsplash.com/premium_photo-1675432656807-216d786dd468?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW5pbWFsfGVufDB8fDB8fHww'),
            );
          }),
    );
  }
}