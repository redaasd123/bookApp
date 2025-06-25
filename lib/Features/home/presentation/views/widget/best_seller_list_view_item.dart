import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preview_appp/constance.dart';
import 'package:preview_appp/core/utils/app_router.dart';
import 'package:preview_appp/core/utils/style.dart';
import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height *.2,
            child: AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(AssestsData.kTestImage),)
                ) ,
              ),
            ),
          ),
          const SizedBox(width: 30,),
           Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 SizedBox(
                  width: MediaQuery.of(context).size.width *.5,
                    child:   Text(
                      style: Style.textStyle20.copyWith(
                        fontFamily: kGtsectraFine
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        'Harry potter and the Goblet of Fire ')),
                const SizedBox(height: 3,),
                const Text(
                    style: Style.textStyle14,
                    maxLines: 2,
                    'j.k Rowling '),
               const SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("19.99💲",
                  style: Style.textStyle20
                    .copyWith(
                    fontWeight: FontWeight.bold
                  ),),
                    //Spacer(),
                  BookRating(),
                ],),

              ],
                     ),
           )
        ],
      ),
    );
  }
}





