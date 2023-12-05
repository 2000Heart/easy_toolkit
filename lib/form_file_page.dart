import 'package:auto_route/annotations.dart';
import 'package:easy_toolkit/form_file_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class FormFilePage extends ConsumerWidget {
  const FormFilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var formFile = ref.read(formFileProvider.notifier);
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) => formFile.dirName = value,
              ),
              TextFormField(
                onChanged: (value) => formFile.name = value,
              ),
              TextFormField(
                onChanged: (value) => formFile.extension = value,
              ),
            ],
          )
        )
      ],
    );
  }
}
