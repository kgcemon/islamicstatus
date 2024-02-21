import 'package:flutter/material.dart';
import 'package:islamicstatus/datasource/my_home_data.dart';
import 'package:islamicstatus/utils/colors.dart';
import 'package:islamicstatus/widget/myappbar.dart';

import '../widget/buildGridView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: buildGridView(),
      ),
    );
  }

}
