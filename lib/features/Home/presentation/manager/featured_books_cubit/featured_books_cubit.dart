import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>{
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
   var result =  await homeRepo.fetchFeaturedBooks();
   
   result.fold((failure){
     emit(FeaturedBooksFailure(failure.errorMessage));
   }, (books) {
     emit(FeaturedBooksSuccess(books));
   });
  }

}