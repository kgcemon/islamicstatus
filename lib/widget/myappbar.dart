import 'package:flutter/material.dart';

import '../utils/colors.dart';

myAppbar(){
  return  AppBar(
    backgroundColor: Color(MyColor.myColor),
    centerTitle: true,
    title: const Text("Islamic App"),);
}