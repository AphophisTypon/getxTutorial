



import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_tutorial/bin/controller/home_controller.dart';
import 'package:getx_tutorial/pages/homepage.dart';
import 'package:getx_tutorial/pages/nav_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2),(){
      Get.off(() => const NavPage(),transition: Transition.zoom);
    });
    // Future.delayed(const Duration(seconds: 2),(){
    //   Get.off(() => const Homepage(),transition: Transition.zoom);
    // });
  }

  @override
  void onClose() {
    ///Para coisas chata, que envolvem o encerramaneto da chatice assincrona
    print('dentro do close');
    super.onClose();
  }
}