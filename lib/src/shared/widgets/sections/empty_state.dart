import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    double iconSize = 64;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(UILayout.instance.layout24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.inbox, size: iconSize),
            SizedBox(height: UILayout.instance.layout16),
            Text(
              'WITHOUT INFO ...',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: UILayout.instance.layout8),
          ],
        ),
      ),
    );
  }
}
