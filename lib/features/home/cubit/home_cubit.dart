import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/models/top_headlines_api_response.dart';
import 'package:news_app/features/home/models/top_headlines_body.dart';
import 'package:news_app/features/home/services/home_services.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeIntial());

  final homeServices = HomeServices();
  Future<void> getTopHeadlines() async {
    emit(TopHeadlinesLoading());
    try {
      final body = TopHeadlinesBody(
        category: 'technology',
        page :1,
        pageSize :7
        );
      final response = await homeServices.getTopHeadlines(body);
      emit(TopHeadlinesLoaded(articles: response.articles));
    } catch (e) {
      emit(TopHeadlinesError(errorMessage: e.toString()));
    }
  }

  // Future<void> getRecommendedNews() async {
  //   emit(RecommendedNewLoading());
  //   try {
  //     final response = await TopHeadlinesApiResponse.getRecommendedNews();
  //     emit(RecommendedNewLoaded(articales: response.articles));
  //   } catch (e) {
  //     emit(RecommendedNewError(errorMessage: e.toString()));
  //   }
  // }
}
