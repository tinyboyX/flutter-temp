import 'package:clean_architechture/config/constant.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCommon extends StatelessWidget {
  const ItemCommon({Key? key, required this.itemModel}) : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Constant.buttonHeight,
      child: Row(
        children: [
          Icon(Icons.image),
          Expanded(
            child: Text(itemModel.title!),
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
