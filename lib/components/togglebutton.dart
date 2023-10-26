import 'package:flutter/material.dart';

class tagglebutton extends StatefulWidget {
  const tagglebutton({Key? key}) : super(key: key);

  @override
  State<tagglebutton> createState() => _tagglebuttonState();
}

class _tagglebuttonState extends State<tagglebutton> {
  List<bool> _selections = List.generate(2, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ToggleButtons(
        children: [Icon(Icons.abc_sharp), Icon(Icons.abc)],
        isSelected: _selections,
        onPressed: (int index) {
          setState(() {
            _selections[index] = !_selections[index];
          });
        },
      ),
    ));
  }
}
