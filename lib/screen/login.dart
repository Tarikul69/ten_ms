import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:ten_ms/screen/registration.dart';
import 'package:ten_ms/screen/users/usershome.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  //Custome Text Field:
  Widget textfield01({required String hint, required String lable}) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint, labelText: lable, border: OutlineInputBorder()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textfield01(
                hint: "Enter your email or phone number",
                lable: "Email or Phone",
              ),
              SizedBox(
                height: 15,
              ),
              textfield01(
                hint: "Password",
                lable: "Password",
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                  Get.to(registration());
                },
                child: Text("Create a new account"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.offAll(usershome());
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
