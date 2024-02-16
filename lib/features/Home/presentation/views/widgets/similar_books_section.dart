import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w700,
            )
        ),
        const SizedBox(
          height: 8,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
