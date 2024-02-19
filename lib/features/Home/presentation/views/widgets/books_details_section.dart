import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.20,
            vertical: 32,
          ),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        Text(
          bookModel.volumeInfo?.title ?? '',
          style: Styles.textStyle30.copyWith(
            fontFamily: kGtSectraFine,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rate: '4.8',
          ratingNumber: '2399',
        ),
        const SizedBox(
          height: 32,
        ),
        const BooksAction(),
      ],
    );
  }
}
