import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ItemModel {
  ItemModel({this.icon, this.title, this.isDivide,this.onTap});

  IconData? icon;
  String? title;
  bool? isDivide;
  VoidCallback? onTap;
}
