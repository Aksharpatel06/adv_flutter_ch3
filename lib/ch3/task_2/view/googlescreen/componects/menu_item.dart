import 'package:flutter/material.dart';

import '../../../modal/menu_list.dart';
import '../../../modal/menu_modal.dart';

GridView menuItem() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4),
    itemCount: menuList.length,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Column(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        MenuModal.setdata(menuList[index])
                            .img),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(MenuModal.setdata(menuList[index]).name)
        ],
      );
    },
  );
}
