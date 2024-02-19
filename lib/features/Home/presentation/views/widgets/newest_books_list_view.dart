import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (BuildContext context, state) {
        if(state is NewestBooksSuccess){
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if(state is NewestBooksFailure){
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
