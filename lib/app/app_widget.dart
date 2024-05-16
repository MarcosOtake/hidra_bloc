import 'package:flutter/material.dart';
import 'package:hidro_bloc/app/core/ui/styles/app_theme.dart';

import 'pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hidro Bloc',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routes: {
        '/': (context) => SplashPage(),
      },
      // routerDelegate: routes.routerDelegate,
      // routeInformationParser: routes.routeInformationParser,
      // routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
