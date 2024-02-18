import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksState{}

class FeaturedBooksInitial extends FeaturedBooksState{}

class FeaturedBooksLoading extends FeaturedBooksState{}

class FeaturedBooksFailure extends FeaturedBooksState{
  final String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}