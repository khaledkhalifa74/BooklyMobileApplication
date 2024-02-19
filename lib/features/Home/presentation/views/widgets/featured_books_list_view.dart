import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                  ),
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail,
                  ),
                );
              },
            ),
          );
        }else if(state is FeaturedBooksFailure){
          return CustomErrorWidget(
              errorMessage: state.errorMessage,
          );
        }else{
          return const Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
