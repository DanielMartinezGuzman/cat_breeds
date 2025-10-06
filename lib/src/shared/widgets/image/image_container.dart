import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(this.url, {this.height = 200, super.key});
  final String url;
  final double height;
  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    height: height,
    child: DecoratedBox(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Image.network(url, fit: BoxFit.contain),
    ),
  );
}
