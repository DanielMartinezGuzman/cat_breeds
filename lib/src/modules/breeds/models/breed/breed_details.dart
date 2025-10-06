part of 'breed.dart';

class Breed extends BaseBreed {
  Breed.fromJson(super.json)
    : temperament = json['temperament'] ?? '',
      description = json['description'] ?? '',
      lifeSpan = json['life_span'] ?? '',
      imageId = json['reference_image_id'] ?? '',
      indoor = json['indoor'] ?? 0,
      adaptability = json['adaptability'] ?? 0,
      affectionLevel = json['affection_level'] ?? 0,
      childFriendly = json['child_friendly'] ?? 0,
      dogFriendly = json['dog_friendly'] ?? 0,
      energyLevel = json['energy_level'] ?? 0,
      grooming = json['grooming'] ?? 0,
      healthIssues = json['health_issues'] ?? 0,
      sheddingLevel = json['shedding_level'] ?? 0,
      socialNeeds = json['social_needs'] ?? 0,
      strangerFriendly = json['stranger_friendly'] ?? 0,
      vocalisation = json['vocalisation'] ?? 0,
      experimental = json['experimental'] ?? 0,
      hairless = json['hairless'] ?? 0,
      natural = json['natural'] ?? 0,
      rare = json['rare'] ?? 0,
      rex = json['rex'] ?? 0,
      suppressedTail = json['suppressed_tail'] ?? 0,
      shortLegs = json['short_legs'] ?? 0,
      hypoallergenic = json['hypoallergenic'] ?? 0,
      super.fromJson();

  final String temperament;
  final String description;
  final String lifeSpan;
  final String imageId;
  final int indoor;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  final int suppressedTail;
  final int shortLegs;
  final int hypoallergenic;
}
