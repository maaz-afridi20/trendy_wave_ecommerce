import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';
import 'package:trendy_waves_ecommerce/utils/validators/validation.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          //! FirstName and LastName.
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText('First Name', value),
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          //! Username.
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                TValidator.validateEmptyText('User Name', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          //! Email.
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          //! PhoneNumber
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          //! Password.
          const SizedBox(height: TSizes.spaceBtwInputFields),

          Obx(() => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validatePassword(value),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
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
                obscureText: controller.isObsecure.value ? true : false,
              )),

          const SizedBox(height: TSizes.spaceBtwItems),
          //
          //! Term and Conditinos.
          const TTermAndConditions(),
          32.heightBox,
          //
          //! Signup button.
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (controller.signupFormKey.currentState!.validate()) {}
              },
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

// Get.to(() => const VerifyEmailScreen())