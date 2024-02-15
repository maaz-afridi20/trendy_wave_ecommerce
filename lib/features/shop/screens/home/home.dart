import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //! Curved Edges.
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  SizedBox(
                    height: 350,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
