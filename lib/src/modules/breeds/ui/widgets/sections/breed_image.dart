import 'package:cat_breeds/src/modules/breeds/core/providers/notifier.dart';
import 'package:cat_breeds/src/modules/breeds/ui/widgets/shimmer/shimmer.dart';
import 'package:cat_breeds/src/shared/widgets/image/image_container.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BreedImageSection extends ConsumerWidget {
  const BreedImageSection(this.id, {super.key});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<String> imageProvider = ref.watch(breedImageAsynProvider(id));
    const double height = 320;

    return imageProvider.when(
      data: (String data) => ImageContainer(data, height: height),
      error: (_, _) => ImageContainer('', height: height),
      loading: () => OverviewCardShimmer(minHeight: height),
    );
  }
}
