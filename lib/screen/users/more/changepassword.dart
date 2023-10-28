import 'package:flutter/material.dart';

class changepassword extends StatelessWidget {
  const changepassword({Key? key}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Change Password"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                mytext(hint: "Old Password", lable: "Old Password"),
                SizedBox(
                  height: 10,
                ),
                mytext(hint: "New Password", lable: "New Password"),
                SizedBox(
                  height: 10,
                ),
                mytext(hint: "Confirm Password", lable: "Confirm Password"),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Submit"),
          ),
        ));
  }
}
