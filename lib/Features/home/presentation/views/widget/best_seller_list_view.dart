import 'package:flutter/cupertino.dart';
import 'package:preview_appp/Features/home/presentation/views/widget/best_seller_list_view_item.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: const BestSellerListViewItem(),
            );
          },
    );
  }
}
