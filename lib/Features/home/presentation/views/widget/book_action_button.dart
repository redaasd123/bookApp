import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/core/utils/funcation/launch_url.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/widget/custom_button.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            text: '19.99 &',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)
            ),
            onPressed: (){},
          ),
        ),
        Expanded(
          child: CustomButton(
            fontSize: 16,
            text:  getText(bookModel),
            backGroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
            ),
            onPressed: ()  {
              //bookModel.saleInfo.buyLink!
              LaunchCustomUrl(context,
                bookModel.saleInfo.buyLink??
                    bookModel.volumeInfo.previewLink);
            }
          ),
        ),
      ],
    );
  }

   String getText(BookModel bookModel) {
    if((bookModel.volumeInfo.previewLink == null)){
      return 'Not Available';
    }else {
      return('Preview');
    }
  }
}