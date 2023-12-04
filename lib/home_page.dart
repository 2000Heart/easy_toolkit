import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 10,
      spacing: 10,
      children: [

      ],
    );
  }

  Widget item(String title){
    return Text("");
  }
}
