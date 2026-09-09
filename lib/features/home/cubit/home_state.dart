part of 'home_cubit.dart';

sealed class HomeState {
  const HomeState();
}

final class HomeIntial extends HomeState {}

final class TopHeadlinesLoading extends HomeState {}

final class TopHeadlinesLoaded extends HomeState {
  final List<Article>? articles;

  const TopHeadlinesLoaded({required this.articles});
}

final class TopHeadlinesError extends HomeState {
  final String errorMessage;

  const TopHeadlinesError({required this.errorMessage});
}

final class RecommendedNewsLoading extends HomeState {}

final class RecommendedNewsLoaded extends HomeState {
  final List<Article>? articles;

  const RecommendedNewsLoaded({required this.articles});
}

final class RecommendedNewsError extends HomeState {
  final String? errorMessage;

  const RecommendedNewsError({this.errorMessage});
}
