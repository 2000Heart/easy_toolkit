import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_toolkit/home_provider.dart';
import 'package:easy_toolkit/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<HomeItem> items = ref.watch(getItemProvider);
    return Scaffold(
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 10,
          spacing: 10,
          children: items.map((e) => item(e,context)).toList()
        ),
      ),
    );
  }

  Widget item(HomeItem item,BuildContext context){
    return GestureDetector(
      onTap: () => context.router.push(item.page),
      child: Text(item.name));
  }
}
