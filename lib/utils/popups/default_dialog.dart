import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TDialogues {
  static showDefaultDialogue() {
    Get.defaultDialog(
      title: "Confirmation",
      middleText: "Are you sure you want to logout?",
      actions: [
        Container(
          width: 80.w,
          height: 40.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: const Color(0xfffad0c4)),
          child: TextButton(
            onPressed: () => Get.back(),
            child: const Text("Cancel"),
          ),
        ),
        Container(
          width: 80.w,
          height: 40.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: const Color(0xFFD32F2F).withOpacity(0.6)),
          child: TextButton(
            onPressed: () => AuthenticationRespsitory.instance.logOut(),
            child: const Text("Log Out", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
