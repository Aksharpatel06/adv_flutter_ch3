
import 'dart:io';

class MenuModal {
  String img;
  String name;

  MenuModal({required this.img,required this.name});

  factory MenuModal.setdata(Map m1)
  {
    return MenuModal(img: m1['img'], name:m1['name']);
  }
}