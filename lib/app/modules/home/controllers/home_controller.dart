import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void book() {
    // Get.toNamed(Routes.BOOK);
  }

  void borrow() {
    // Get.toNamed(Routes.PEMINJAMAN);
  }

  void increment() => count.value++;
}
