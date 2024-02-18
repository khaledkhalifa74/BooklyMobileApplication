import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class NewestBooksState{}

class NewestBooksInitial extends NewestBooksState{}

class NewestBooksLoading extends NewestBooksState{}

class NewestBooksFailure extends NewestBooksState{
  final String errorMessage;

  NewestBooksFailure(this.errorMessage);
}

class NewestBooksSuccess extends NewestBooksState{
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}