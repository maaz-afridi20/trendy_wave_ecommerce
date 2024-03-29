import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => controller.screens[controller.selectedIndex.value]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 70.h,
                width: Get.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: TColors.dark,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView.builder(
                  itemCount: controller.navIcons.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              controller.selectedIndex.value = index;
                            },
                            child: Obx(
                              () => Container(
                                margin: EdgeInsets.symmetric(horizontal: 25.w),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      controller.navIcons[index],
                                      color: controller.selectedIndex.value ==
                                              index
                                          ? TColors.light
                                          : TColors.buttonDisabled
                                              .withOpacity(0.7),
                                    ),
                                    Text(controller.navTitles[index],
                                        style: TextStyle(
                                            color: controller
                                                        .selectedIndex.value ==
                                                    index
                                                ? TColors.light
                                                : TColors.buttonDisabled
                                                    .withOpacity(0.7))),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
  final navIcons = [Iconsax.menu, Iconsax.shop, Iconsax.heart, Iconsax.user];
  final List<String> navTitles = ['Home', 'Store', 'Wishlist', 'Profile'];
}


//  bottomNavigationBar: Obx(
//         () => ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: NavigationBar(
//             selectedIndex: controller.selectedIndex.value,
//             height: 80,
//             elevation: 0,
//             backgroundColor: dark ? TColors.black : TColors.white,
//             indicatorColor:
//                 dark ? TColors.black : TColors.primary.withOpacity(0.1),
//             onDestinationSelected: (index) =>
//                 controller.selectedIndex.value = index,
//             destinations: const [
//               // Container(color: Vx.blue400),
//               NavigationDestination(
//                 icon: Icon(Iconsax.menu),
//                 label: 'Home',
//               ),
//               NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
//               NavigationDestination(
//                   icon: Icon(Iconsax.heart), label: 'Wishlist'),
//               NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
//             ],
//           ),
//         ),
//       ),


  // body: Obx(() => controller.screens[controller.selectedIndex.value]),