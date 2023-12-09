import 'package:auto_route/annotations.dart';
import 'package:easy_toolkit/form_file_provider.dart';
import 'package:easy_toolkit/model/file_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class FormFilePage extends ConsumerWidget {
  const FormFilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FilePickerResult? files = ref.watch(pickFileProvider);
    PickFile pickFiles = ref.read(pickFileProvider.notifier);
    FileModel newFile = ref.watch(formFileProvider);
    FormFile formNewFile = ref.read(formFileProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text("文件编辑")),
      body: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            children: files?.files.map((e) => _fileItem(e)).toList() ?? [
              ElevatedButton(
                onPressed: pickFiles.pickFile,
                child: const Text("选择文件")
              )
            ]
          ),
          Form(
            child: Column(
              children: [
                GestureDetector(
                  onTap: formNewFile.setDir,
                  child: Text(newFile.dirName ?? "选择文件路径")
                ),
                TextFormField(
                  onChanged: (value) => formNewFile.origin = value,
                ),
                TextFormField(
                  onChanged: (value) => formNewFile.replace = value,
                ),
                TextFormField(
                  onChanged: (value) => formNewFile.extension = value,
                )
              ]
            )
          ),
          ElevatedButton(onPressed: formNewFile.modify, child: const Text("确认"))
        ],
      ),
    );
  }

  Widget _fileItem(PlatformFile file){
    return Text(file.path!);
  }
}
