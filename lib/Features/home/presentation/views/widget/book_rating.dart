import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),),
        const SizedBox(width: 6.3,),
        const  Text("4.8"
          ,style: Style.textStyle16,),
        const SizedBox(width: 5,),
        Text('(232)',style: Style.textStyle14.copyWith(
            color: const Color(0xff707070)
        ),)
      ],
    );
  }
}