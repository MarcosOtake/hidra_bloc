import 'package:flutter_bloc/flutter_bloc.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  Future<void> waitingSplash() async {
    await Future.delayed(Duration.zero);
    emit(SplashLoading());
    await Future.delayed(const Duration(seconds: 4));
    emit(SplashSuccess());
  }
}
