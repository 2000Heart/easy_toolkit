import 'package:easy_toolkit/model/file_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'form_file_provider.g.dart';

@riverpod
class FormFile extends _$FormFile{
  @override
  FileModel build() {
    return const FileModel();
  }

  set dirName(String dirName) {
    state = state.copyWith(dirName: dirName);
  }

  set name(String name) {
    state = state.copyWith(name: name);
  }

  set extension(String extension) {
    state = state.copyWith(extension: extension);
  }
}