import 'dart:async';

import 'package:cat_breeds/src/modules/breeds/core/providers/providers/service_provider.dart';
import 'package:cat_breeds/src/modules/breeds/core/service/service.dart';
import 'package:cat_breeds/src/modules/breeds/models/breed/breed.dart';
import 'package:cat_breeds/src/modules/breeds/models/pagination/page.dart';
import 'package:cat_breeds/src/shared/typing/models/base_animal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';

part 'async_notifiers/breeds/controller.dart';
part 'async_notifiers/breeds/state.dart';
part 'async_notifiers/breeds/provider.dart';
part 'async_notifiers/breed_details/provider.dart';
part 'async_notifiers/breed_image/provider.dart';
