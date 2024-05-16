import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidro_bloc/app/models/home/home_page.dart';
import 'package:hidro_bloc/app/models/splash/cubit/splash_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SplashCubit();
    return Scaffold(
      body: BlocBuilder<SplashCubit, SplashState>(
        bloc: controller,
        builder: (context, state) {
          if (state is SplashInitial) {
            controller.waitingSplash();
            //print(state.toString());
            log('INITIAL');
          }
          if (state is SplashLoading) {
            log('LOADING');
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is SplashSuccess) {
            log('SUCCESS');
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            });
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
