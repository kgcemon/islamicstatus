import 'package:flutter/material.dart';
import 'package:islamicstatus/allscreen/detailspage.dart';

import '../datasource/my_home_data.dart';

GridView buildGridView() {
  return GridView.builder(
    itemCount: categoryList.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/1.8,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
    itemBuilder: (context, index) => InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsPage(fullText: categoryList[index]['name']),
          )),
      child: Card(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(categoryList[index]['img']),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          Text(categoryList[index]['name']),
        ],
      )),
    ),
  );
}
