import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:flutter/material.dart';

class AppViewLayout extends StatelessWidget {
  const AppViewLayout({required this.child, this.title, super.key});

  final Widget child;
  final String? title;

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(UILayout.instance.layout32),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(title ?? 'Cat breeds'),
        centerTitle: true,
      ),
    ),
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(UILayout.instance.layout16),
        child: child,
      ),
    ),
  );
}
