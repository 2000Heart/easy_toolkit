import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class FormFilePage extends ConsumerWidget {
  const FormFilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {},
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              TextFormField(
                onChanged: (value) {},
              ),
            ],
          )
        )
      ],
    );
  }
}
