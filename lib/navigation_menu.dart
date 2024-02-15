import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode();
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          height: 80,
          elevation: 0,
          backgroundColor: dark ? TColors.black : TColors.white,
          indicatorColor: dark ? TColors.black : TColors.white,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            // Container(color: Vx.blue400),
            NavigationDestination(icon: Icon(Iconsax.menu), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.orangeAccent),
  ];
}
