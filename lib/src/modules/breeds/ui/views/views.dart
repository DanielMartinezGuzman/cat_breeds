import 'package:cat_breeds/src/modules/breeds/core/navigation/navigation.dart';
import 'package:cat_breeds/src/modules/breeds/core/providers/notifier.dart';
import 'package:cat_breeds/src/modules/breeds/models/breed/breed.dart';
import 'package:cat_breeds/src/modules/breeds/ui/widgets/buttons/load_more.dart';
import 'package:cat_breeds/src/modules/breeds/ui/widgets/cards/overview_card.dart';
import 'package:cat_breeds/src/modules/breeds/ui/widgets/sections/breed_image.dart';
import 'package:cat_breeds/src/modules/breeds/ui/widgets/shimmer/shimmer.dart';
import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:cat_breeds/src/shared/widgets/input/search_input.dart';
import 'package:cat_breeds/src/shared/widgets/layout/app_view_layout.dart';
import 'package:cat_breeds/src/shared/widgets/sections/empty_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'details/details.dart';
part 'explorer/explorer.dart';
