import 'package:trendy_waves_ecommerce/features/authentications/screens/login/login.dart';
import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class OnBoardingControllers extends GetxController {
  static OnBoardingControllers get instance => Get.find();

  //! Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //! Update the current index.

  void updatePageIndicator(index) => currentPageIndex.value = index;

  //! Jump to specific index
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //! Update the current index and jump to next page.
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //! Update the current index and skip to last.
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
