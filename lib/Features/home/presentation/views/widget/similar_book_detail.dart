import 'package:flutter/cupertino.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/similar_book_list_view.dart';

import '../../../../../core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like'
          ,style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.bold
            ,),),

        const SizedBox(height: 16,),
        SimilarBooksListView(),
      ],
    );
  }
}