part of '../../notifier.dart';

class BreedsOverviewProvider extends AsyncNotifier<PaginatorState> {
  @override
  Future<PaginatorState> build() async {
    List<BaseBreed> response = await Service.instance.getBreedsOverview(
      Page(page: 0),
    );
    return PaginatorState(breedsOverview: response, hasDataToGet: true);
  }

  PaginatorState get _currentState =>
      (state as AsyncData<PaginatorState>).value;

  void onIsLoadingNewPageChanged(bool value) =>
      state = AsyncValue<PaginatorState>.data(
        _currentState.copyWith(isLoadingNewPage: value),
      );

  void onHasDataToGetChanged(bool value) =>
      state = AsyncValue<PaginatorState>.data(
        _currentState.copyWith(hasDataToGet: value),
      );

  void onPageChanged(int value) => state = AsyncValue<PaginatorState>.data(
    _currentState.copyWith(page: value),
  );

  void onbreedsOverviewChanged(List<BaseBreed> value) =>
      state = AsyncValue<PaginatorState>.data(
        _currentState.copyWith(breedsOverview: value),
      );

  Future<void> loadNextPage() async {
    onIsLoadingNewPageChanged(true);
    int newPage = _currentState.page + 1;
    List<BaseBreed> response = await Service.instance.getBreedsOverview(
      Page(page: newPage),
    );
    onIsLoadingNewPageChanged(false);
    if (response.isEmpty) {
      onHasDataToGetChanged(false);
    }
    onPageChanged(newPage);
    onbreedsOverviewChanged(<BaseBreed>[
      ..._currentState.breedsOverview,
      ...response,
    ]);
  }

  Future<void> getBreedsOverviewByName(String breedName) async {
    state = const AsyncValue<PaginatorState>.loading();
    List<BaseBreed> response = await Service.instance
        .getBreedsOverviewByString(breedName);
    state = AsyncValue<PaginatorState>.data(
      PaginatorState(breedsOverview: response),
    );
  }
}
