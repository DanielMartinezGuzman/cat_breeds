import 'package:cat_breeds/src/modules/breeds/ui/routes.dart';
import 'package:cat_breeds/src/modules/breeds/ui/views/views.dart';
import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:cat_breeds/src/shared/utils/styles/no_scroll_glow_behavior.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat breeds',
      scrollBehavior: NoScrollGlowBehavior(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: UILayout.instance.layout20),
          bodyMedium: TextStyle(fontSize: UILayout.instance.layout16),
        ),
      ),
      routes: dashboardRoutes,
      home: const BreedsExplorerView(),
    );
  }
}
