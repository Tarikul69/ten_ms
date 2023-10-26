import 'package:flutter/material.dart';

class download extends StatelessWidget {
  const download({Key? key}) : super(key: key);
  Widget card({required String title, required String subtitle}) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Center(
                    child: Icon(
                      Icons.file_copy_rounded,
                      size: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Learn From anywhere, anytime",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "You Are not enrolled in any courses yet. Enrolled courses can be found here",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Find a course to Download"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
