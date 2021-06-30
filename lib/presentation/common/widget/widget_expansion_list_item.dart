import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:clean_architechture/presentation/common/widget/widget_common_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionListItem extends StatelessWidget {
  const ExpansionListItem({Key? key, required this.items, required this.title}) : super(key: key);
  final String title;
  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      textColor: AppColors.black,
      iconColor: Colors.orange,
      title: Text(title),
      children: items.map(
        (itemModel) {
          return ItemCommon(
            itemModel: itemModel,
          );
        },
      ).toList(),
    );
  }
}
