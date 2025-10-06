part of 'shimmer.dart';

class BreedsDetailsShimmer extends StatelessWidget {
  const BreedsDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      SizedBox(height: UILayout.instance.layout32),
      OverviewCardShimmer(),
      SizedBox(height: UILayout.instance.layout16),
      ...List<Widget>.generate(5, (_) => TextLineShimmer()),
      SizedBox(height: UILayout.instance.layout16),
      ...List<Widget>.generate(5, (_) => TextLineShimmer()),
    ],
  );
}
