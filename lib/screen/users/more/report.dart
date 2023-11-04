import 'package:flutter/material.dart';

class report extends StatefulWidget {
  report({Key? key}) : super(key: key);

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
  String selectedOption = 'Option 1';
  dynamic isChecked1 = false;
  dynamic isChecked2 = false;
  dynamic isChecked3 = false;
  dynamic isChecked4 = false;
  dynamic isChecked5 = false;
//
//Radio Button function
  void handleRadioValueChange(value) {
    setState(() {
      selectedOption = value;
    });
  }

//
//Check Box
  // void toggleCheckbox(value) {
  //   setState(() {
  //     isChecked = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 212, 211, 211),
      appBar: AppBar(
        title: Text("Report & Problem"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 101,
            child: const Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Write your problem",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Type your answer here",
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Write your problem",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    RadioListTile(
                      title: Text('Option 1'),
                      value: 'Option 1',
                      groupValue: selectedOption,
                      onChanged: handleRadioValueChange,
                    ),
                    RadioListTile(
                      title: Text('Option 2'),
                      value: 'Option 2',
                      groupValue: selectedOption,
                      onChanged: handleRadioValueChange,
                    ),
                    RadioListTile(
                      title: Text('Option 3'),
                      value: 'Option 3',
                      groupValue: selectedOption,
                      onChanged: handleRadioValueChange,
                    ),
                    RadioListTile(
                      title: Text('Option 4'),
                      value: 'Option 4',
                      groupValue: selectedOption,
                      onChanged: handleRadioValueChange,
                    ),
                    RadioListTile(
                      title: Text('Option 5'),
                      value: 'Option 5',
                      groupValue: selectedOption,
                      onChanged: handleRadioValueChange,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Write your problem",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    CheckboxListTile(
                      title: Text("Option 1"),
                      value: isChecked1,
                      onChanged: (value) {
                        setState(() {
                          isChecked1 = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Option 1"),
                      value: isChecked2,
                      onChanged: (value) {
                        setState(() {
                          isChecked2 = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Option 1"),
                      value: isChecked3,
                      onChanged: (value) {
                        setState(() {
                          isChecked3 = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Option 1"),
                      value: isChecked4,
                      onChanged: (value) {
                        setState(
                          () {
                            isChecked4 = value;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Submit",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
