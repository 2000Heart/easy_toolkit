import 'package:auto_route/auto_route.dart';
import 'package:easy_toolkit/form_file_page.dart';
import 'package:easy_toolkit/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

class HomeItem{
  static const formFile = HomeItem(name: "文件编辑", page: FormFileRoute());

  final String name;
  final PageRouteInfo<void> page;

  const HomeItem({required this.name,required this.page});
}

@riverpod
List<HomeItem> getItem(GetItemRef ref){
  return[
    HomeItem.formFile,
  ];
}