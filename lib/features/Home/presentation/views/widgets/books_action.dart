import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            text: '19.99',
            textColor: Colors.black87,
            backgroundColor: Colors.white,
          ),
        ),
        Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            text: 'Free preview',
            textColor: Colors.white,
            backgroundColor: Colors.deepOrangeAccent,
          ),
        ),
      ],
    );
  }
}
