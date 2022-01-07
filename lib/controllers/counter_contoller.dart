import 'package:get/get.dart';

class CounterService extends GetxService {
  //
  var count = 0.obs;

  //
  void increment() {
    count++;
  }

  //
  void decrement() {
    count--;
  }

  // workers
  @override
  void onInit() {
    super.onInit();

    ever(count, showData);
  }

  void showData(newCountValue) {
    print('Value of count changed');
  }
}

/*
class CounterController extends GetxController {
  //
  var count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    print('onInit() called');
    count++;
  }

  @override
  void onReady() {
    super.onReady();

    print('onReady() called');
    count++;
  }

  @override
  void onClose() {
    super.onClose();

    print('onClose() called');
  }

  //
  void increment() {
    count++;
  }

  //
  void decrement() {
    count--;
  }
}
*/
