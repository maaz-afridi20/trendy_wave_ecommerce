import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                    backgroundColor: TColors.light.withOpacity(0.1))),
            Positioned(
                top: -10,
                right: -280,
                child: TCircularContainer(
                    backgroundColor: TColors.light.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
