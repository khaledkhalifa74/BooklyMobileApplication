import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                  ),
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        }else if (state is SimilarBooksFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
