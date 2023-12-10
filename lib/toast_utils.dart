import 'package:easy_toolkit/routes.dart';
import 'package:flutter/material.dart';

class ToastUtils{

  static show(String msg){
    if(Routes().navigatorKey.currentContext != null){
      ScaffoldMessenger.of(Routes().navigatorKey.currentContext!).showSnackBar(_snackBar(msg));
    }
  }

  static SnackBar _snackBar(String msg){
    return SnackBar(content: Text(msg));
  }
}