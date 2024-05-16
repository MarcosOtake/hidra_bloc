part of 'home_cubit.dart';

sealed class HomeState {
  const HomeState();
}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {}

final class HomeError extends HomeState {}
