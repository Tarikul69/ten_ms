import 'package:flutter/material.dart';
import 'package:get/get.dart';

class conditions extends StatefulWidget {
  const conditions({Key? key}) : super(key: key);

  @override
  State<conditions> createState() => _conditionsState();
}

class _conditionsState extends State<conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms & Condition"),
      ),
      
      body: Container(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onPressed: () {
          Get.to(message());
        },
        child: Icon(
          Icons.message,
        ),
      ),
    );
  }

  Widget message() {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Abcd"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter Your Name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  hintText: 'Enter Your Phone Number',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Start Chat"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
