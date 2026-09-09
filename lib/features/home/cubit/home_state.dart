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

final class RecommendedNewLoading extends HomeState {}

final class RecommendedNewLoaded extends HomeState {
  final List<Article>? articles;

  const RecommendedNewLoaded({required this.articles});
}

final class RecommendedNewError extends HomeState {
  final String? errorMessage;

  const RecommendedNewError({this.errorMessage});
}
