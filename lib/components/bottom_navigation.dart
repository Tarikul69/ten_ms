import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ten_ms/components/indexCintroller.dart';

class bottom_navigation extends StatefulWidget {
   bottom_navigation({Key? key}) : super(key: key);

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
  
    return GetBuilder<indexController>(builder: (_) {
      return SafeArea(
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue, // Set the selected item color here
          unselectedItemColor: Colors.grey,
          //selectedIconTheme: IconThemeData(color: Colors.yellow),
          currentIndex: _.index,
          elevation: 0,
          // backgroundColor: const Color.fromARGB(255, 190, 186, 186),
          onTap: (index) {
            indexController controller = Get.find();
            controller.changeme(index);
          },
          items:  [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                //color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.black,
              icon: Icon(
                Icons.book,
                //color: Colors.black,
              ),
              label: "Course",
            ), 
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                // color: Colors.black,
              ),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
