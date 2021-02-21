import 'package:get/get.dart';

// class Controller extends GetxController {
//   int counter = 0;
//
//   void increment() {
//     counter++;
//     update(['aVeryUniqueID']); // look here!
//   }
// }

class Controller extends GetxController {

  int one = 1;

  void incrementOne() {
    one++;
    update();
  }

  var two = 2.obs;

  void incrementTwo() => two.value++;

}