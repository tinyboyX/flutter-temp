import 'package:clean_architechture/config/constant.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemCommon extends StatelessWidget {
  const ItemCommon({Key? key, required this.itemModel, required this.onTap}) : super(key: key);
  final ItemModel itemModel;
  final Function(String title) onTap;

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
    return Padding(
      padding: EdgeInsets.all(Constant.defaultPadding),
      child: GestureDetector(
        onTap: () {
          onTap(itemModel.title!);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: Constant.buttonHeight,
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
      ),
    );
  }
}
