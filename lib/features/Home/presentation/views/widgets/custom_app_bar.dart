import 'package:bookly/core/widgets/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}
