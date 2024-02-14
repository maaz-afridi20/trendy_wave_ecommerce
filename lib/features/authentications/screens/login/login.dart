import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              //! logo,title and subtitle.
              TLoginHeader(),

              //!Form
              TLoginForm(),

              //!Divider.

              TFormDivider(dividerText: TTexts.orSignInWith),

              SizedBox(height: TSizes.spaceBtwItems),
              //! Footer.

              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
