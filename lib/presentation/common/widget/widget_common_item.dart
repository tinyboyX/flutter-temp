import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemCommon extends StatelessWidget {
  const ItemCommon({Key? key, required this.itemModel}) : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    if (itemModel.isDivide == true) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Divider(
          color: Colors.grey.shade200,
          thickness: 2,
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        itemModel.onTap!();
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white10,
        height: 60,
        child: Row(
          children: [
            const Icon(
              Icons.image,
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
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
