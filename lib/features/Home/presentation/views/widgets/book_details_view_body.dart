import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
