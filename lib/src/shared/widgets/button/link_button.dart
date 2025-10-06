import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const LinkButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) => TextButton(
    style: TextButton.styleFrom(
      padding: EdgeInsets.all(UILayout.instance.layout4),
      minimumSize: Size(0, 0),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    onPressed: onPressed,
    child: Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(decoration: TextDecoration.underline),
    ),
  );
}
