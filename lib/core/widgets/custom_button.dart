import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.borderRadius, required this.text, required this.textColor, required this.backgroundColor});

  final BorderRadiusGeometry? borderRadius;
  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
        ),
          onPressed: (){},
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
    );
  }
}
