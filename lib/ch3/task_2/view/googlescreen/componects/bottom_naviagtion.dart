import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row bottomnaviagation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(onPressed: () {

      }, icon: Icon(CupertinoIcons.left_chevron)),
      IconButton(onPressed: () {

      }, icon: Icon(CupertinoIcons.right_chevron)),
      IconButton(onPressed: () {

      }, icon: Icon(CupertinoIcons.refresh_thick)),
      IconButton(onPressed: () {

      }, icon: Icon(Icons.add_box_outlined)),
      IconButton(onPressed: () {

      }, icon: Icon(CupertinoIcons.home)),
    ],
  );
}
