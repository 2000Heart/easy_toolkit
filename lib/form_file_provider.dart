import 'package:easy_toolkit/file_utils.dart';
import 'package:easy_toolkit/model/file_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'form_file_provider.g.dart';

@riverpod
class PickFile extends _$PickFile{

  @override
  FilePickerResult? build() => null;


  Future pickFile() async{
    state = await FileUtils.pickFiles();
  }
}

@riverpod
class FormFile extends _$FormFile{
  @override
  FileModel build() {
    return const FileModel();
  }

  set dirName(String dirName) {
    state = state.copyWith(dirName: dirName);
  }

  set origin(String origin) {
    state = state.copyWith(origin: origin);
  }

  set replace(String replace) {
    state = state.copyWith(replace: replace);
  }

  set extension(String extension) {
    state = state.copyWith(extension: ".$extension");
  }

  Future setDir() async{
    String? dir = await FileUtils.pickFolder();
    if(dir != null) state = state.copyWith(dirName: dir);
  }

  Future modify() async{
    FilePickerResult? file = ref.watch(pickFileProvider);
    if(file != null){
      for (int i=0;i<file.files.length;i++) {
        FileUtils.reformatFile(file.files[i].path!,state,index: i);
      }
    }
  }
}