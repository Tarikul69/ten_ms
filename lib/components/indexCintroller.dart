import 'package:get/get.dart';
import 'package:ten_ms/screen/users/download.dart';
import 'package:ten_ms/screen/users/more.dart';
import 'package:ten_ms/screen/users/skill.dart';
import 'package:ten_ms/screen/users/usershome.dart';

class indexController extends GetxController {
  int index = 0;
  List page = [skill(), more(), download(), usershome()];
  void changeme(i) {
    index = i;
    update();
  }
}
