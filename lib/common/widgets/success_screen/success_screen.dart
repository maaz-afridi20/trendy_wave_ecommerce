import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              //! Image.
              Image(
                  image: AssetImage(image),
                  width: THelperFunctions.screenWidth() * 0.6),
              32.heightBox,

              //! Title and Subtitle.
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              16.heightBox,
              Text(subTitle,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),

              32.heightBox,

              //! Button.
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(TTexts.tContinue))),
            ],
          ),
        ),
      ),
    );
  }
}
