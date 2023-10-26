import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ten_ms/components/indexCintroller.dart';

class usershome extends StatelessWidget {
   usershome({Key? key}) : super(key: key);

  Widget card({required String title, required String img}) {
    return Card(
      color: Colors.grey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(img),
            ),            
            //subtitle: Text(subtitle),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left, ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.put(indexController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height - 65,
                child: Column(
                  children: [
                    const Card(
                      child: SizedBox(
                        height: 260,
                        width: 500,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "My Courses",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.home,
                                size: 200,
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "You Are not enrolled in any courses yet. Enrolled courses can be found here",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (_, i) {
                            return SizedBox(
                                height: 100,
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: card(
                                    img: "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
                                    title: "Title",
                                  ),
                                ));
                          }),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (_, i) {
                          return SizedBox(
                            height: 100,
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: card(title: "Title", img: "https://wallpaperaccess.com/full/2637581.jpg",),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ), 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
