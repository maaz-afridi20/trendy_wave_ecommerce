import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(title: const Text('Re Authenticate User')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                    controller: controller.verifyEmail,
                    validator: TValidator.validateEmail,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email)),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Obx(
                  () => TextFormField(
                      obscureText: controller.hidePasswords.value,
                      controller: controller.verifyPassword,
                      validator: (value) => TValidator.validatePassword(value),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.password_check),
                        labelText: TTexts.email,
                        suffixIcon: IconButton(
                            onPressed: () =>
                                controller.hidePasswords.value !=
                                controller.hidePasswords.value,
                            icon: controller.isObsecure.value
                                ? const Icon(Iconsax.eye_slash)
                                : const Icon(Icons.remove_red_eye)),
                      )),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          controller.reAuthenticateEmailAndPassword(),
                      child: 'Verify'.text.make()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
