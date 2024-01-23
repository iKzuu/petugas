import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Get.toNamed(Routes.BOOK);
            }, child: Text("buku")),
            ElevatedButton(onPressed: () {
              Get.toNamed(Routes.PEMINJAMAN);
            }, child: Text("peminjaman")),
          ],
          // 'HomeView is working',
          // style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
