import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preview_appp/core/utils/assets.dart';
import 'package:preview_appp/core/utils/style.dart';
import 'custom_appbar.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children: [
         const CustomAppBar(),
         const FeatureBooksListView(),
          SizedBox(height: 50,),
          Text("Best Seller"
          ,style: Style.titleMedium,),
          BestSellerListViewItem()
          
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height *.2,
          child: AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: NetworkImage(AssestsData.kTestImage))
              ) ,
            ),
          ),
        )
      ],
    );
  }
}










