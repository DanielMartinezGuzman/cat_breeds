import 'package:cat_breeds/src/modules/breeds/models/breed/breed.dart';
import 'package:cat_breeds/src/modules/breeds/models/pagination/page.dart'
    as page;
import 'package:cat_breeds/src/modules/breeds/models/service/base_service.dart';
import 'package:flutter/widgets.dart';

import '../mock_response/breed_response.dart';

class MockService extends BaseService {
  MockService._();
  static final MockService instance = MockService._();

  @override
  Future<List<BreedOverview>> getBreedsOverview(page.Page params) async =>
      throw FlutterError('unimplemented method');

  @override
  Future<Breed> getBreedDetails(String id) async =>
      throw FlutterError('unimplemented method');

  @override
  Future<List<BreedOverview>> getBreedsOverviewByString(
    String breedName,
  ) async => throw FlutterError('unimplemented method');

  @override
  Future<String> getImageById(String id) async =>
      BreedServicesResponse.instance.imagesProviderResponse[id] ?? '';
}
