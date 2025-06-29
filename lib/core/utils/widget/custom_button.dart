import 'package:flutter/material.dart';
import 'package:preview_appp/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.onPressed,
    required this.backGroundColor,
    required this.textColor,
    @required this.borderRadius,
    @required this.fontSize,
    required this.text});

  final void Function() onPressed;
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius ??
                  BorderRadius.circular(12)
            )
          ),
          child: Text(text,
          style: Style.textStyle18.copyWith(
            color: textColor,
                fontWeight: FontWeight.w900,
              fontSize:fontSize
          ),)),
    );
  }
}
