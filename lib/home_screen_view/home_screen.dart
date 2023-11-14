// ignore_for_file: must_be_immutable

import 'package:emart/consts/consts.dart';
import 'package:emart/home_screen_view/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // init home controller
  var controller = Get.put(HomeScreenController());

  var navbarItems = [
    BottomNavigationBarItem(icon: Image.asset(icHome, width: 26), label: home),
    BottomNavigationBarItem(
        icon: Image.asset(icCategories, width: 26), label: categories),
    BottomNavigationBarItem(icon: Image.asset(icCart, width: 26), label: cart),
    BottomNavigationBarItem(
        icon: Image.asset(icProfile, width: 26), label: account),
  ];

  var navBody = [
    Container(color: Colors.blue),
    Container(color: Colors.amber),
    Container(color: Colors.greenAccent),
    Container(color: Colors.cyan),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          selectedItemColor: redColor,
          items: navbarItems,
          backgroundColor: whiteColor,
          onTap: (newIndex) => controller.currentNavIndex.value = newIndex,
        ),
      ),
    );
  }
}
