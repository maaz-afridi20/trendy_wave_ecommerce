import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppbar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}
