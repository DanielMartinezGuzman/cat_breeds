part of 'shimmer.dart';

class OverviewCardShimmer extends StatelessWidget {
  const OverviewCardShimmer({
    this.minHeight = 200,
    this.maxHeight = 320,
    super.key,
  });
  final double minHeight;
  final double maxHeight;

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: Colors.grey,
    child: ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxHeight, minHeight: minHeight),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(UILayout.instance.layout12),
        ),
      ),
    ),
  );
}
