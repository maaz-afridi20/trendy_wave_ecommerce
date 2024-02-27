import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RxBool eyeLash = false.obs;
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //! Email textfield.
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            Obx(
              () => TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  // suffixIcon: Icon(Iconsax.eye_slash),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      eyeLash.value = !eyeLash.value;
                    },
                    child: eyeLash.value
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Icons.remove_red_eye),
                  ),
                ),
                obscureText: eyeLash.value,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            //
            //! Remember me and forget password.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //! Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                //! Forget password.
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //! Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            //! Create button.
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignUpScreeb());
                },
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
