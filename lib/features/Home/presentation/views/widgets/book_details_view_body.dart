import 'package:bookly/features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
