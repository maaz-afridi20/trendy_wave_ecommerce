import 'package:trendy_waves_ecommerce/features/authentications/screens/sign_up/widgets/signup_form.dart';
import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class SignUpScreeb extends StatelessWidget {
  const SignUpScreeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! Title.
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              //! Form.
              const TSignUpForm(),
              32.heightBox,

              //! Divider.
              const TFormDivider(dividerText: TTexts.orSignInWith),

              32.heightBox,
              //!Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
