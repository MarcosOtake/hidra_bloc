import 'package:flutter/material.dart';
import 'package:hidro_bloc/app/core/ui/styles/app_text_style.dart';
import 'package:hidro_bloc/app/core/ui/widgets/elevated_button_default.dart';
import 'package:hidro_bloc/app/core/ui/widgets/text_form_default.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final testeEC = TextEditingController();
  final teste2EC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(),
            ElevatedButtonDefault(
              titleButton: 'TESTE',
              textStyle: AppTextStyle.appFontBold,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            TextFormDefault(controller: testeEC, label: 'teste'),
            const SizedBox(height: 16),
            TextFormDefault(controller: teste2EC, label: 'teste2')
          ],
        ),
      ),
    );
  }
}
