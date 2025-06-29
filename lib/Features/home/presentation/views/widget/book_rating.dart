import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment ,
      children: [
        const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),),
        const SizedBox(width: 6.3,),
          Text(rating.toString()
          ,style: Style.textStyle16.copyWith(
                fontWeight: FontWeight.bold
              )),
        const SizedBox(width: 5,),
        Text("($count)".toString() ,style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.w600
        ),)
      ],
    );
  }
}
