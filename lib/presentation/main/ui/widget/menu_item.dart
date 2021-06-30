import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/config/theme.dart';
import 'package:flutter/material.dart';

typedef ButtonCallback = void Function();

class MenuItem extends StatelessWidget {
  final bool isSelected;
  final String title;
  final IconData icon;
  final ButtonCallback onClick;

  const MenuItem({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.icon,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: isSelected ? AppColors.orange : AppColors.grey),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                title,
                style: isSelected
                    ? AppTextStyle.focusBottomBarTextStyle.copyWith(
                  color: getColor(context),
                )
                    : AppTextStyle.unFocusBottomBarTextStyle.copyWith(
                  color: getColor(context),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getColor(context) {
    return AppTheme().isLightMode(context) ? (isSelected ? AppColors.orange : AppColors.white) : (isSelected ? AppColors.orange : AppColors.black);
  }
}
