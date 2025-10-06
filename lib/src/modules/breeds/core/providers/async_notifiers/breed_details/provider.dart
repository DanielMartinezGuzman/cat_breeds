part of '../../notifier.dart';

class BreedDetailsAsyncNotifier extends AsyncNotifier<Breed> {
  BreedDetailsAsyncNotifier(this.id);
  final String id;
  @override
  Future<Breed> build() => Service.instance.getBreedDetails(id);
}

final AsyncNotifierProviderFamily<BreedDetailsAsyncNotifier, Breed, String>
breedDetailsAsynProvider = AsyncNotifierProvider.autoDispose
    .family<BreedDetailsAsyncNotifier, Breed, String>(
      BreedDetailsAsyncNotifier.new,
    );
