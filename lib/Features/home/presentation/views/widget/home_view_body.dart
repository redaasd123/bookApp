import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const CustomAppBar(),
       const FeatureBooksListView()
      ],
    );
  }
}

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,// 30%  من مساحة الشاشة
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return const FeatureListViewItem();
      }),
    );
  }
}







