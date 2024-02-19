import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            text: 'Free',
            textColor: Colors.black87,
            backgroundColor: Colors.white,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: ()async{
             launchCustomUrl(
                  context,
                  bookModel.volumeInfo?.previewLink,
             );
            },
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            text: getText(bookModel),
            textColor: Colors.white,
            backgroundColor: Colors.deepOrangeAccent,
          ),
        ),
      ],
    );
  }

  getText(BookModel bookModel) {
    if(bookModel.volumeInfo?.previewLink == null){
      return 'Not available';
    }else{
      return 'Preview';
    }
  }
}
