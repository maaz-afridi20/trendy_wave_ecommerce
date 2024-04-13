import '../../../../utils/constants/export_statement.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final switchController = Get.put(SwitchController());
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //! header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppbar(
                      title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  )),

                  //
                  //! user profile card.

                  TUserProfileTile(
                    onTap: () => Get.to(() => const ProfileScreen()),
                  ),
                  32.heightBox,
                ],
              ),
            ),
            //! body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  16.heightBox,
                  TSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subtitle: 'Set the shopping delivery address',
                      onTap: () => Get.to(() => const UserAddressScreen())),
                  TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add,remove products and move to checkout',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-process and completed orders',
                      onTap: () => Get.to(() => const OrderScreen())),
                  TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List all of the discounted Coupons',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any type of notifications',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account privacy settings',
                      subtitle: 'Manage data usage and account privacy',
                      onTap: () {}),

                  //
                  //! App Settings
                  //

                  32.heightBox,
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),

                  16.heightBox,
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload your data to cloud firestoer'),
                  switchController.buildSwithTile(context, 'Geo Location',
                      'Set recommendation based on your location', false.obs),
                  switchController.buildSwithTile(context, 'Safe Mode',
                      'Search result in safe mode', false.obs),
                  switchController.buildSwithTile(
                      context, 'Hd Image', 'Image to be seen', false.obs),

                  32.heightBox,
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      // onPressed: () => controller.logOut(),
                      onPressed: () => TDialogues.showDefaultDialogue(),
                      child: const Text('Log Out'),
                    ),
                  ),
                  (32 * 2.5).heightBox
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





//! My Logic.
 // Obx(
                  //   () => TSettingsMenuTile(
                  //     icon: Iconsax.security_user,
                  //     title: 'Safe Mode',
                  //     subtitle: 'Search results in all safe mode',
                  //     trailing: Switch(
                  //         value: isSwitchOn.value,
                  //         onChanged: (value) {
                  //           isSwitchOn.value = value;
                  //           String toastMessage =
                  //               value ? 'button on' : 'button off';

                  //           VxToast.show(context,
                  //               msg: toastMessage,
                  //               pdHorizontal: 100,
                  //               textSize: 18,
                  //               bgColor:
                  //                   dark ? TColors.white : TColors.lightGrey,
                  //               textColor: dark ? Colors.white : Colors.black);
                  //         }),
                  //   ),
                  // ),