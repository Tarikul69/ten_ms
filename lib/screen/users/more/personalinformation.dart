import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class personalinformation extends StatefulWidget {
  const personalinformation({Key? key}) : super(key: key);

  @override
  State<personalinformation> createState() => _personalinformationState();
}

class _personalinformationState extends State<personalinformation> {
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

//Select Image Function
  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    }
    setState(() {
      _image = image;
    });
  }

//Image Picker UI
  Widget picimage() {
    return Container(
      child: CircleAvatar(
        radius: 70,
        backgroundImage:
            NetworkImage("https://wallpaperaccess.com/full/2637581.jpg"),
      ),
    );
  }

//
  Widget btn(context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: _pickImage,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // picimage(),
              Stack(
                children: [
                  picimage(),
                  Positioned(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo),
                    ),
                    bottom: -10,
                    left: 90,
                  )
                ],
              ),
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
