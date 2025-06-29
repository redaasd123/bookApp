import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preview_appp/Features/home/data/model/BookModel.dart';
import 'package:preview_appp/core/utils/widget/custom_progress_indicator.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),
            child: AspectRatio(
              aspectRatio: 2.6/4,   //width ,height
              child: CachedNetworkImage(
                placeholder: (context, url) =>
                const Center(child:CustomProgressIndicator() ,),
                  fit: BoxFit.fill,
                  imageUrl: imageUrl,
              errorWidget:(context, url, error) => const
                Icon(Icons.error),),
                    ),
          ));
  }
}