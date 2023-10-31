import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 193, 193),
        title: Title(
          color: Colors.black,
          child: Text(
            "Notifications",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Text("No notification to show"),
      ),
    );
  }
}
