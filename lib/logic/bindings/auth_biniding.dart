import 'package:get/instance_manager.dart';
import 'package:smart/drawer/naviigation_drawer.dart';
import 'package:smart/logic/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(NavigationDrawer());
  }
}
