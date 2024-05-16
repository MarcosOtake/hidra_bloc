part of 'splash_cubit.dart';

sealed class SplashState {
  const SplashState();
}

final class SplashInitial extends SplashState {}

final class SplashLoading extends SplashState {}

final class SplashSuccess extends SplashState {}

final class SplashError extends SplashState {}
