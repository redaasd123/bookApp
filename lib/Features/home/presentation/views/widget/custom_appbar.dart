import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:preview_appp/core/utils/app_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
      top: 5,),
      child: Row(
        children : [
          Image.asset(AssestsData.kLogo,
            height: 120,width: 120,),
          Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(
                AppRouter.kSearchView);
          },
              icon: Icon(size: 24
                  ,FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}