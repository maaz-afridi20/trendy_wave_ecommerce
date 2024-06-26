import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Obx(() {
      final networkImage = controller.user.value.profilePicture;
      final image = networkImage.isNotEmpty ? networkImage : TImages.user;
      return ListTile(
        leading: TCircularImage(
            image: image,
            width: 50,
            height: 50,
            padding: 0,
            isNetworkImage: networkImage.isNotEmpty),
        title: Text(
          controller.user.value.fullName,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: TColors.white,
              ),
        ),
        subtitle: Text(
          controller.user.value.email,
          style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: TColors.white,
              ),
        ),
        trailing: IconButton(
            onPressed: onTap,
            icon: const Icon(Iconsax.edit, color: TColors.white)),
      );
    });
  }
}
