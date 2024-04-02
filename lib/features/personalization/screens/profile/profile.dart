import 'package:trendy_waves_ecommerce/features/personalization/screens/profile/change_name.dart';

import '../../../../utils/constants/export_statement.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    String userId = '6849023';
    return Scaffold(
      appBar: const TAppbar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //! profile picture.

              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              // ! details....

              8.heightBox,
              const Divider(),

              //! Personal info..
              16.heightBox,
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              16.heightBox,
              TProfileMenu(
                  title: 'Name',
                  value: controller.user.value.fullName,
                  onPressed: () {}),
              TProfileMenu(
                  title: 'User Name',
                  value: controller.user.value.userName,
                  onPressed: () => Get.to(() => const ChangeName())),
              16.heightBox,
              const Divider(),
              16.heightBox,

              //! Personal Information.
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              16.heightBox,
              TProfileMenu(
                  title: 'User Id',
                  value: controller.user.value.id,
                  icon: Iconsax.copy,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: userId));
                    VxToast.show(context, msg: 'Copied to clipboard $userId');
                  }),
              TProfileMenu(
                  title: 'Email',
                  value: controller.user.value.email,
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Phone Number',
                  value: controller.user.value.phoneNumber,
                  onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                  title: 'Date Of Birth',
                  value: 'Oct 10 1990',
                  onPressed: () {}),
              const Divider(),
              16.heightBox,

              Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Delete Account Permenantly',
                        style: TextStyle(color: Colors.red),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
