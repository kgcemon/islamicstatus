import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicstatus/widget/myappbar.dart';
import 'package:islamicstatus/widget/nextpage.dart';

class DetailsPage extends StatelessWidget {
  String fullText;

  DetailsPage({super.key, required this.fullText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: NexPage(myText: fullText),
        ),)
    );
  }


}
