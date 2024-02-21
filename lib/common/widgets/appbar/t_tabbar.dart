import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TTabbar extends StatelessWidget implements PreferredSizeWidget {
  const TTabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        physics: const BouncingScrollPhysics(),
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: dark ? TColors.white : TColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
