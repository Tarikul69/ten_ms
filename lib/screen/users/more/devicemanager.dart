import 'package:flutter/material.dart';

class devicemanager extends StatelessWidget {
  const devicemanager({Key? key}) : super(key: key);
  Widget mycard(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current Device",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Honor X9a 5G"),
              Text("mobile"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 176, 175, 175),
      appBar: AppBar(
        title: Text("Device Manager"),
      ),
      body: Container(
        child: mycard(context),
      ),
    );
  }
}
