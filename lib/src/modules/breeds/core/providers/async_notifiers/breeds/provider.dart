part of '../../notifier.dart';

AsyncNotifierProvider<BreedsOverviewProvider, PaginatorState>
breedsAsynProvider =
    AsyncNotifierProvider.autoDispose<BreedsOverviewProvider, PaginatorState>(
      BreedsOverviewProvider.new,
    );
