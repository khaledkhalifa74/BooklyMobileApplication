import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CachedImageError extends StatelessWidget {
  const CachedImageError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Opps, there was an error',
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 8,
        ),
        Icon(Icons.error,size: 32,),
      ],
    );
  }
}
