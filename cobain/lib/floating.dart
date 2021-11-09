import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  const Floating({Key? key, required this.floating}) : super(key: key);

  final Function floating;

  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (check) {
              check = false;
            } else {
              check = true;
            }
          });
        },
        child: Icon(check ? Icons.play_arrow : Icons.stop),
      ),
    );
  }
}
