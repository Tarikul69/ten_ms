import 'package:flutter/material.dart';
import 'package:ten_ms/screen/users/more/books.dart';
import 'package:ten_ms/screen/users/more/bookstore.dart';
import 'package:ten_ms/screen/users/more/certificate.dart';

class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Payment"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "All Payment",
              ),
              Tab(
                text: "Success",
              ),
              Tab(
                text: "Failed",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            books(),
            certificate(),
            bookstore(),
          ],
        ),
      ),
    );
  }
}
