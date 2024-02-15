import 'package:bookly/features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
        itemBuilder: (context, index){
          return const Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: BestSellerListViewItem(),
          );
        },
    );
  }
}
