import 'package:flutter/material.dart';

class personalinformation extends StatelessWidget {
  const personalinformation({Key? key}) : super(key: key);
  Widget mytext({
    required String hint,
    required String lable,
  }) {
    return TextField(
      decoration: InputDecoration(
        labelText: lable,
        hintText: lable,
        border: OutlineInputBorder(),
      ),
    );
  }

//
//Image Picker
//
  Widget picimage() {
    return Container(
      child: CircleAvatar(
        radius: 40,
        backgroundImage:
            NetworkImage("https://wallpaperaccess.com/full/2637581.jpg"),
      ),
    );
  }

//
//Button
//
  Widget btn(context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Update Profile"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              picimage(),
              SizedBox(
                height: 15,
              ),
              mytext(hint: 'Your Name', lable: 'Enter Your Name'),
              SizedBox(
                height: 15,
              ),
              mytext(hint: "hint", lable: "Your Mobile Number"),
              SizedBox(
                height: 15,
              ),
              mytext(hint: "Your Email Address", lable: "Your Email Address"),
              SizedBox(
                height: 15,
              ),
              mytext(hint: "Your Institute name", lable: "Institute"),
              SizedBox(
                height: 15,
              ),
              btn(context),
            ],
          ),
        ),
      ),
    );
  }
}
