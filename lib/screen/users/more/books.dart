import 'package:flutter/material.dart';

class books extends StatelessWidget {
  const books({Key? key}) : super(key: key);
  Widget mybook() {
    return Center(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.book_outlined,
            size: 150,
          ),
          Text(
            "No information found on this page!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "No information found on this page",
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Call 12345 if necessary",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "8 an to 11 pm",
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Books"),
      ),
      body: mybook(),
    );
  }
}
