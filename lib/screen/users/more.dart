import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ten_ms/screen/login.dart';
import 'package:ten_ms/screen/users/more/blog.dart';
import 'package:ten_ms/screen/users/more/books.dart';
import 'package:ten_ms/screen/users/more/bookstore.dart';
import 'package:ten_ms/screen/users/more/certificate.dart';
import 'package:ten_ms/screen/users/more/changepassword.dart';
import 'package:ten_ms/screen/users/more/conditions.dart';
import 'package:ten_ms/screen/users/more/devicemanager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ten_ms/screen/users/more/payment.dart';
import 'package:ten_ms/screen/users/more/personalinformation.dart';
import 'package:ten_ms/screen/users/more/report.dart';

class more extends StatefulWidget {
  const more({Key? key}) : super(key: key);

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  Widget mycard(
      {required String text, required VoidCallback url1, required icon1}) {
    return SizedBox(
      height: 70,
      width: 600,
      child: InkWell(
        onTap: url1,
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon1),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 236, 236),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  // Row(
                  //   children: [
                  //     Text("data"),
                  //     SizedBox(width: 200,),
                  //     Text("data"),
                  //   ],
                  // ),
                  const Card(
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     Text(
                        //       "Account",
                        //       style: TextStyle(
                        //         fontSize: 20,
                        //         fontStyle: FontStyle.normal,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 270,
                        //     ),
                        //     InkWell(
                        //       child: Text(
                        //         "Logout",
                        //         style: TextStyle(
                        //           fontSize: 15,
                        //           fontStyle: FontStyle.normal,
                        //           color: Color.fromARGB(255, 245, 88, 77),
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  mycard(
                    text: "Personal Information",
                    url1: () {
                      Get.to(
                        personalinformation(),
                      );
                    },
                    icon1: Icons.person,
                  ),
                  mycard(
                    text: "Change Password",
                    url1: () {
                      Get.to(changepassword());
                    },
                    icon1: Icons.lock,
                  ),
                  mycard(
                      text: "Device Manager",
                      url1: () {
                        Get.to(devicemanager());
                      },
                      icon1: Icons.device_hub_sharp),
                  // mycard(
                  //   text: "Language",
                  //   url1: () {
                  //     void showAlartDialogue() {
                  //       showDialog(
                  //         barrierDismissible: false,
                  //         context: context,
                  //         builder: (BuildContext context) => AlertDialog(
                  //           backgroundColor: Colors.amber,
                  //           elevation: 8,
                  //           scrollable: true,
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.all(
                  //               Radius.circular(16),
                  //             ),
                  //           ),
                  //         ),
                  //       );
                  //     }

                  //     ;
                  //   },
                  //   icon1: Icons.language,
                  // ),
                  SizedBox(
                    height: 70,
                    width: 600,
                    child: InkWell(
                      onTap: () {
                        showBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 150,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Title(
                                        color: Colors.black,
                                        child: Text(
                                          "Language",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                      RadioListTile(
                                        title: Text("Bangla"),
                                        value: "bangla",
                                        groupValue: "bangla",
                                        onChanged: (value) {
                                          setState(() {
                                            //gender = value.toString();
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text("English"),
                                        value: "english",
                                        groupValue: "english",
                                        onChanged: (value) {
                                          setState(() {
                                            //gender = value.toString();
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.language),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Language",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  mycard(
                    text: "My Certificates",
                    url1: () {
                      Get.to(certificate());
                    },
                    icon1: Icons.money,
                  ),
                  mycard(
                      text: "My Books",
                      url1: () {
                        Get.to(books());
                      },
                      icon1: Icons.book),
                  mycard(
                      text: "Payment & Order History",
                      url1: () {
                        Get.to(payment());
                      },
                      icon1: Icons.payment),
                  mycard(
                      text: "10 Minute School Blog",
                      url1: () {
                        Get.to(blog());
                      },
                      icon1: Icons.block),
                  mycard(
                    text: "Book Store",
                    url1: () {
                      Get.to(bookstore());
                    },
                    icon1: Icons.book_outlined,
                  ),
                  InkWell(
                    onTap: () {
                      // {
                      //   final call = Uri.parse('tel:+91 9830268966');
                      //   if (await canLaunchUrl(call)) {
                      //     launchUrl(call);
                      //   } else {
                      //     throw 'Could not launch $call';
                      //   }
                      // }
                      print("Bangladesh");
                    },
                    child: mycard(
                        text: "Hotline (169010)",
                        url1: () {
                          // Get.to(hotline());
                        },
                        icon1: Icons.phone),
                  ),
                  mycard(
                      text: "Report Problem",
                      url1: () {
                        Get.to(report());
                      },
                      icon1: Icons.report_problem),
                  mycard(
                    text: "Terms & Conditions",
                    url1: () {
                      Get.to(conditions());
                    },
                    icon1: Icons.pages,
                  ),
                  mycard(
                    text: "Logout",
                    url1: () {
                      Get.to(login());
                    },
                    icon1: Icons.logout,
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
