import 'package:get/instance_manager.dart';
import 'package:smart/logic/controllers/main_controller.dart';
import 'package:smart/logic/controllers/payment_controller.dart';
import 'package:smart/logic/controllers/settings_controller.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
    Get.put(PayMentController(), permanent: true);
  }
}
