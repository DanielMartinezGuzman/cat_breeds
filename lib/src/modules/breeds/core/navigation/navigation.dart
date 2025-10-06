import 'package:cat_breeds/src/modules/breeds/ui/views/views.dart';
import 'package:flutter/material.dart';

class BreedNavigation {
  BreedNavigation._();
  static final BreedNavigation instance = BreedNavigation._();

  void navToBreedsDetails(BuildContext context, {required String id}) =>
      Navigator.pushNamed(context, BreedDetails.route, arguments: id);
}
