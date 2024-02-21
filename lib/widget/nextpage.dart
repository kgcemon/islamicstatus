import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NexPage extends StatelessWidget {

  String myText;

   NexPage({super.key, required this.myText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(myText),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  copyData(myText, context);
                },
                child: const Text("Copy"),
              ),
              TextButton(onPressed: () {}, child: const Text("Share"))
            ],
          ),
        ],
      ),
    );
  }

  copyData(String text, BuildContext context) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Copy Done")));
  }
}
