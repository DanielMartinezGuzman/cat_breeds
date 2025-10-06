import 'package:cat_breeds/src/modules/breeds/core/service/end_points.dart';
import 'package:cat_breeds/src/modules/breeds/models/breed/breed.dart';
import 'package:cat_breeds/src/modules/breeds/models/pagination/page.dart';
import 'package:cat_breeds/src/shared/services/repository.dart';
import 'package:cat_breeds/src/shared/typing/enums/http.dart';
import 'package:cat_breeds/src/shared/utils/extensions/http.dart';

class Service {
  Service._();
  static final Service instance = Service._();

  Future<List<BreedOverview>> getBreedsOverview(Page params) async =>
      (await HttpService.instance.request(
        path: '${BreedEndPoints.breedsUrl}?${params.toQueryParams}',
        type: HttpRequestType.get,
      )).listConverter<BreedOverview>(BreedOverview.fromJson);

  Future<Breed> getBreedDetails(String id) async =>
      (await HttpService.instance.request(
        path: '${BreedEndPoints.breedsUrl}/$id',
        type: HttpRequestType.get,
      )).converter<Breed>(Breed.fromJson);

  Future<List<BreedOverview>> getBreedsOverviewByString(
    String breedName,
  ) async => (await HttpService.instance.request(
    path: '${BreedEndPoints.breedSearchUrl}?q=$breedName',
    type: HttpRequestType.get,
  )).listConverter<BreedOverview>(BreedOverview.fromJson);

  Future<String> getImageById(String id) async =>
      (await HttpService.instance.request(
        path: '${BreedEndPoints.imagesUrl}/$id',
        type: HttpRequestType.get,
      )).converter<String>((Map<String, dynamic> json) => json['url']);
}
