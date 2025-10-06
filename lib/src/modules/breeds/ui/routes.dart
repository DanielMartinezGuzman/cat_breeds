import 'package:cat_breeds/src/modules/breeds/ui/views/views.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> dashboardRoutes =
    <String, WidgetBuilder>{
      BreedsExplorerView.route: (BuildContext context) => BreedsExplorerView(),
      BreedDetails.route: (BuildContext context) => BreedDetails(),
    };
