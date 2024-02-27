import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TReadmoreWidget extends StatelessWidget {
  const TReadmoreWidget(
      {super.key, required this.text, required this.trimLines});

  final String text;
  final int trimLines;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: trimLines,
      trimExpandedText: ' show less',
      trimCollapsedText: ' show more',
      moreStyle: const TextStyle(
          color: TColors.primary, fontSize: 14, fontWeight: FontWeight.bold),
      lessStyle: const TextStyle(
          color: TColors.primary, fontSize: 14, fontWeight: FontWeight.bold),
      trimMode: TrimMode.Line,
    );
  }
}
