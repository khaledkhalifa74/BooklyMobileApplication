import 'package:bookly/features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index){
        return const Padding(
          padding: EdgeInsets.only(
            bottom: 20,
          ),
          child: Text('data'),
        );
      },
    );
  }
}
