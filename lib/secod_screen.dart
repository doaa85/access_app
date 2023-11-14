import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mysecondscreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var data;
  // ignore: prefer_typing_uninitialized_variables
  var passdata;

  Mysecondscreen({super.key, this.data, this.passdata});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second")),
      body: Center(
        child: Column(
          children: [
            Text(
              "  ${widget.data}",
            ),
            Text("${widget.passdata}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.backpack))
          ],
        ),
      ),
    );
  }
}
