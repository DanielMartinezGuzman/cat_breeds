import 'package:cat_breeds/src/modules/breeds/core/providers/providers.dart';
import 'package:cat_breeds/src/modules/breeds/core/providers/providers/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks/mock_response/breed_response.dart';
import '../mocks/service/mock_service.dart';

void main() {
  test('breedImageAsynProvider validation', () async {
    String imageId = 'default';
    final ProviderContainer container = ProviderContainer(
      overrides: <Override>[
        serviceProvider.overrideWithValue(MockService.instance),
      ],
    );
    final String response = await container.read(
      breedImageAsynProvider(imageId).future,
    );
    expect(
      response,
      BreedServicesResponse.instance.imagesProviderResponse[imageId],
    );
  });
}
