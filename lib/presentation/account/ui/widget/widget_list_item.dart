import 'package:clean_architechture/config/constant.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:clean_architechture/presentation/common/widget/widget_common_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class WidgetListItem extends StatelessWidget {
  WidgetListItem({Key? key, required this.items}) : super(key: key);
  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constant.defaultMargin),
      child: Column(
        children: items.map(
          (itemModel) {
            return ItemCommon(
              itemModel: itemModel,
            );
          },
        ).toList(),
      ),
    );
  }
}
