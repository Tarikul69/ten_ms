import 'package:flutter/material.dart';

class certificate extends StatelessWidget {
  const certificate({Key? key}) : super(key: key);
  Widget myCard(context) {
    return SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: const Card(
        child: Center(
          child: Text("You have not earned any certificate yet."),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        title: Text("Certificate"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myCard(context),
        ],
      ),
    );
  }
}
