import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class devicemanager extends StatelessWidget {
  devicemanager({Key? key}) : super(key: key);

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo? androidInfo;
  Future<AndroidDeviceInfo> getInfo() async {
    return await deviceInfo.androidInfo;
  }

  Widget mycard(context, String version) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current Device",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(version),
              Text("mobile"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 176, 175, 175),
      appBar: AppBar(
        title: Text("Device Manager"),
      ),
        body: SafeArea(
          child: FutureBuilder<AndroidDeviceInfo>(
            future: getInfo(),
            builder: (context, snapshot) {
              return Column(
                children: [mycard(context, "${snapshot.data!.version}")],
              );
            },
          ),
        )
    );
  }
}
