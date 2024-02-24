import '../../../../utils/constants/export_statement.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isSwitchOn = false.obs;
    final dark = THelperFunctions.isDarkMode();
    return Scaffold(
      body: SingleChildScrollView(
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

                  const TUserProfileTile(),
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
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add,remove products and move to checkout',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-process and completed orders',
                      onTap: () {}),
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
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geo Location',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  Obx(
                    () => TSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subtitle: 'Search results in all safe mode',
                      trailing: Switch(
                          value: isSwitchOn.value,
                          onChanged: (value) {
                            isSwitchOn.value = value;
                            String toastMessage =
                                value ? 'button on' : 'button off';

                            VxToast.show(context,
                                msg: toastMessage,
                                pdHorizontal: 100,
                                textSize: 18,
                                bgColor:
                                    dark ? TColors.white : TColors.lightGrey,
                                textColor: dark ? Colors.white : Colors.black);
                          }),
                    ),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD quality image',
                    subtitle: 'Set your image quality',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  32.heightBox,
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Log Out'))),
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
