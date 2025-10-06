part of '../views.dart';

class BreedDetails extends ConsumerWidget {
  static String route = '/breed/details';
  const BreedDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? breedId = ModalRoute.of(context)?.settings.arguments as String?;
    AsyncValue<Breed> detailsProvider = ref.watch(
      breedDetailsAsynProvider(breedId ?? ''),
    );
    return AppViewLayout(
      title: detailsProvider.when<String?>(
        data: (Breed data) => data.name,
        error: (_, _) => null,
        loading: () => null,
      ),
      child: detailsProvider.when<Widget>(
        data: (Breed data) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            BreedImageSection(data.imageId),
            SizedBox(height: UILayout.instance.layout16),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Text(data.description),
                  SizedBox(height: UILayout.instance.layout16),
                  Text('Temperament: ${data.temperament}'),
                  Text('Life span: ${data.lifeSpan}'),
                  Text('Indoor: ${data.indoor}'),
                  Text('Adaptability: ${data.adaptability}'),
                  Text('Affection: ${data.affectionLevel}'),
                  Text('Child friendly: ${data.childFriendly}'),
                  Text('Dog friendly: ${data.dogFriendly}'),
                  Text('Energy level: ${data.energyLevel}'),
                  Text('Grooming: ${data.grooming}'),
                  Text('Health issues: ${data.healthIssues}'),
                  Text('Shedding level: ${data.sheddingLevel}'),
                  Text('Social needs: ${data.socialNeeds}'),
                  Text('Stranger friendly: ${data.strangerFriendly}'),
                  Text('Vocalisation: ${data.vocalisation}'),
                  Text('Experimental: ${data.experimental}'),
                  Text('Hairless: ${data.hairless}'),
                  Text('Natural: ${data.natural}'),
                  Text('Rare: ${data.rare}'),
                  Text('Rex: ${data.rex}'),
                  Text('Suppressed tail: ${data.suppressedTail}'),
                  Text('Short legs: ${data.shortLegs}'),
                  Text('Hypoallergenic: ${data.hypoallergenic}'),
                ],
              ),
            ),
          ],
        ),
        loading: () => BreedsDetailsShimmer(),
        error: (_, _) {
          return EmptyState();
        },
      ),
    );
  }
}
