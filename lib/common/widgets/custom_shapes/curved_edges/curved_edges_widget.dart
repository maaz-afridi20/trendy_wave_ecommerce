import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
