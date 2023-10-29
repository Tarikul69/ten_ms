import 'package:flutter/material.dart';

class bookstore extends StatelessWidget {
  const bookstore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 200, 200),
      appBar: AppBar(
        title: Text("Book Store"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Title(
                    color: Colors.black,
                    child: Text(
                      "Book Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (_, i) {
                            return SizedBox(
                                height: 100,
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: mycard(
                                    img:
                                        "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
                                    title: "Title",
                                  ),
                                ));
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mycard({required String title, required String img}) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(img),
              ),
              //subtitle: Text(subtitle),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
