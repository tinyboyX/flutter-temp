import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/account_information/model/account_information_item_model.dart';
import 'package:clean_architechture/presentation/common/widget/widget_common_custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WidgetInfoItem extends StatefulWidget {
  const WidgetInfoItem({Key? key, required this.accountInformationItemModel}) : super(key: key);
  final AccountInformationItemModel accountInformationItemModel;

  @override
  _WidgetInfoItemState createState() => _WidgetInfoItemState();
}

class _WidgetInfoItemState extends State<WidgetInfoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: AppColors.white,
      height: 60,
      child: (widget.accountInformationItemModel.isConnectFacebook != null)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.accountInformationItemModel.title!,
                  style: AppTextStyle.label6,
                ),
                WidgetCommonCustomSwitch(
                  activeColor: Colors.greenAccent,
                  value: widget.accountInformationItemModel.isConnectFacebook,
                  onChanged: (value) {
                    print("VALUE : $value");
                    setState(() {
                      widget.accountInformationItemModel.isConnectFacebook = value;
                    });
                  },
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.accountInformationItemModel.title!,
                        style: AppTextStyle.label6,
                      ),
                      Text(
                        widget.accountInformationItemModel.information!,
                        style: widget.accountInformationItemModel.isVerified! ? AppTextStyle.verifiedLabel : AppTextStyle.informationLabel,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 20,
                    color: AppColors.grey.shade500,
                  ),
                )
              ],
            ),
    );
  }
}
