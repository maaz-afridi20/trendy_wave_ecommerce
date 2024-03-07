import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(title: Text('Nike'), showBackArrow: true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const TBrandCard(showBorder: true),
              32.heightBox,
              const TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
