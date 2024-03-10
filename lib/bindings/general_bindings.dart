import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}


/*
if there is anything 
that k hm chahtay hain k baar baar uss ka instance create  na karein 
tu hm is ko binding mein aik hii dafa uss ka instance 
create kr lengay tu bss wo siraf.. aik hii baar uss ko create krr lega.
orr um uss ko for example get.find say aram say find kr sktay hain..
*/