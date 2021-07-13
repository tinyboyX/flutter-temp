import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCommon extends StatelessWidget {
  const ItemCommon({Key? key, required this.itemModel}) : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    if (itemModel.isDivide == true) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Divider(
          color: Colors.grey.shade400,
          thickness: 2,
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        itemModel.onTap!();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 25),
        height: 24,
        child: Row(
          children: [
            Icon(
              itemModel.icon,
              color: Colors.orange,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                itemModel.title!,
                style: AppTextStyle.label6,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 12.h,
            ),
          ],
        ),
      ),
    );
  }
}
