import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState>{
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks()async{
    emit(NewestBooksLoading());
   var result =  await homeRepo.fetchNewestBooks();
   
   result.fold((failure){
     emit(NewestBooksFailure(failure.errorMessage));
   }, (books) {
     emit(NewestBooksSuccess(books));
   });
  }

}