part of 'breed.dart';

class BreedOverview extends BaseBreed {
  BreedOverview.fromJson(super.json)
    : imageUrl = json['image']['url'],
      super.fromJson();
  final String? imageUrl;
}
