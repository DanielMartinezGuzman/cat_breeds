part of '../views.dart';

class BreedsExplorerView extends ConsumerWidget {
  static String route = '/breeds/home';

  const BreedsExplorerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<PaginatorState> provider = ref.watch(breedsAsynProvider);

    return AppViewLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SearchInput(
            onChanged: ref
                .read(breedsAsynProvider.notifier)
                .getBreedsOverviewByName,
            onTapClearButton: () => ref.invalidate(breedsAsynProvider),
          ),
          SizedBox(height: UILayout.instance.layout16),
          Expanded(
            child: ListView.separated(
              itemCount: provider.when<int>(
                data: (PaginatorState data) => data.breedsOverview.length + 1,
                loading: () => 5,
                error: (_, _) => 1,
              ),
              itemBuilder: (_, int index) => provider.when(
                skipLoadingOnRefresh: false,
                data: (PaginatorState data) {
                  if (data.breedsOverview.isEmpty) {
                    return EmptyState();
                  } else if (index < data.breedsOverview.length) {
                    return OverviewCard(
                      data.breedsOverview[index],
                      onSelect: (String id) => BreedNavigation.instance
                          .navToBreedsDetails(context, id: id),
                    );
                  } else if (data.hasDataToGet) {
                    return LoadMoreButton(
                      isLoading: data.isLoadingNewPage,
                      onPressed: ref
                          .read(breedsAsynProvider.notifier)
                          .loadNextPage,
                    );
                  }
                  return SizedBox.shrink();
                },
                loading: () => OverviewCardShimmer(),
                error: (Object error, _) => SizedBox(),
              ),
              separatorBuilder: (_, _) => SizedBox(height: UILayout.instance.layout16),
            ),
          ),
        ],
      ),
    );
  }
}
