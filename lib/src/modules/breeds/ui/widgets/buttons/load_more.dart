import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:flutter/material.dart';

class LoadMoreButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;
  final String label;
  final IconData? icon;

  const LoadMoreButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    this.label = 'Ver más',
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton.icon(
        onPressed: isLoading ? null : onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: UILayout.instance.layout20,
            vertical: UILayout.instance.layout12,
          ),
        ),
        icon: isLoading
            ? SizedBox(
                width: UILayout.instance.layout16,
                height: UILayout.instance.layout16,
                child: CircularProgressIndicator(),
              )
            : Icon(icon ?? Icons.expand_more),
        label: Text(label),
      ),
    );
  }
}
