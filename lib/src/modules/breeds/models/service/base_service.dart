import 'package:cat_breeds/src/modules/breeds/models/breed/breed.dart';
import 'package:cat_breeds/src/modules/breeds/models/pagination/page.dart';

abstract class BaseService {
  Future<List<BreedOverview>> getBreedsOverview(Page params);
  Future<Breed> getBreedDetails(String id);
  Future<List<BreedOverview>> getBreedsOverviewByString(String breedName);
  Future<String> getImageById(String id);
}
