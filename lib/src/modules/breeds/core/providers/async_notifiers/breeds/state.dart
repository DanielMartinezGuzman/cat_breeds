part of '../../notifier.dart';

class PaginatorState {
  PaginatorState({
    required this.breedsOverview,
    this.page = 0,
    this.hasDataToGet = false,
    this.isLoadingNewPage = false,
  });

  final List<BaseBreed> breedsOverview;
  final int page;
  final bool hasDataToGet;
  final bool isLoadingNewPage;

  PaginatorState copyWith({
    List<BaseBreed>? breedsOverview,
    int? page,
    bool? hasDataToGet,
    bool? isLoadingNewPage,
  }) {
    return PaginatorState(
      breedsOverview: breedsOverview ?? this.breedsOverview,
      page: page ?? this.page,
      hasDataToGet: hasDataToGet ?? this.hasDataToGet,
      isLoadingNewPage: isLoadingNewPage ?? this.isLoadingNewPage,
    );
  }
}
