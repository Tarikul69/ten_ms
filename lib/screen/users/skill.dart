import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ten_ms/components/bottom_navigation.dart';
import 'package:ten_ms/components/indexCintroller.dart';
import 'package:ten_ms/components/myappbar.dart';
import 'package:ten_ms/screen/users/more.dart';
import 'package:ten_ms/screen/users/skill1.dart';
import 'package:ten_ms/screen/users/usershome.dart';

class skill extends StatelessWidget {
   skill({Key? key}) : super(key: key);

    List page = [
    usershome(),
    skill1(),
    more(),
   ];

  @override
  Widget build(BuildContext context) {
    Get.put(indexController());
     indexController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: myappbar(),
      ),
      body: GetBuilder<indexController>(builder: (_){
        return page[_.index];
      },
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
       child: bottom_navigation(), ),
    );
  }
}
