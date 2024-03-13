import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //! Email textfield.
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validatePassword(value),
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  // suffixIcon: Icon(Iconsax.eye_slash),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.isObsecure.value =
                          !controller.isObsecure.value;
                    },
                    child: controller.isObsecure.value
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Icons.remove_red_eye),
                  ),
                ),
                obscureText: controller.isObsecure.value,
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
                    Obx(() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) {
                          controller.rememberMe.value =
                              !controller.rememberMe.value;
                        })),
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
                // onPressed: () => Get.to(() => const NavigationMenu()),
                onPressed: () => controller.signIn(),
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
