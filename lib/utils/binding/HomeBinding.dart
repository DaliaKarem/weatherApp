import 'package:get/get.dart';
import 'package:wheatherapp/controller/HomeContrroller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: "Cairo"));
  }

}