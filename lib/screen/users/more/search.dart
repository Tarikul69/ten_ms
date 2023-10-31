import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 193, 193),
        title: TextField(
          style: TextStyle(fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            hintText: "Search",
            //labelText: ""
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
