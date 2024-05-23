import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row bottomnaviagation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(onPressed: () {

      }, icon: const Icon(CupertinoIcons.left_chevron)),
      IconButton(onPressed: () {

      }, icon: const Icon(CupertinoIcons.right_chevron)),
      IconButton(onPressed: () {

      }, icon: const Icon(CupertinoIcons.refresh_thick)),
      IconButton(onPressed: () {

      }, icon: const Icon(Icons.add_box_outlined)),
      IconButton(onPressed: () {

      }, icon: const Icon(CupertinoIcons.home)),
    ],
  );
}
