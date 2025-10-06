part of '../../notifier.dart';

class BreedImageAsyncNotifier extends AsyncNotifier<String> {
  BreedImageAsyncNotifier(this.id);
  final String id;
  @override
  Future<String> build() => Service.instance.getImageById(id);
}

final AsyncNotifierProviderFamily<BreedImageAsyncNotifier, String, String>
breedImageAsynProvider = AsyncNotifierProvider.autoDispose
    .family<BreedImageAsyncNotifier, String, String>(
      BreedImageAsyncNotifier.new,
    );
