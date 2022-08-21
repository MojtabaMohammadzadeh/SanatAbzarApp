import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ShopController extends GetxController {

  var currentIndex = 0;


  changeCategories(index) async {
    this.currentIndex= index;

    update();
  }

}