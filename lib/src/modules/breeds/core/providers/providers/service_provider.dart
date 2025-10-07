import 'package:cat_breeds/src/modules/breeds/core/service/service.dart';
import 'package:cat_breeds/src/modules/breeds/models/service/base_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<BaseService> serviceProvider = Provider<BaseService>(
  (Ref ref) => Service.instance,
);
