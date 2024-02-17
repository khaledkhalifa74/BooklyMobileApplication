import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/Search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 48,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(
              child: SearchResultListView()),
        ],
      ),
    );
  }
}
