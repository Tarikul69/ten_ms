import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ten_ms/screen/users/more/notification.dart';
import 'package:ten_ms/screen/users/more/search.dart';

class myappbar extends StatelessWidget {
  const myappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // appBar: AppBar(),
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://wallpaperaccess.com/full/2637581.jpg"),
                ),
                title: Text("Tarikul Abir"),
                subtitle: Text("Job Preparation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(search());
                    },
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(notification());
                    },
                    child: Icon(
                      Icons.notifications,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
