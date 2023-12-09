import 'dart:developer';
import 'dart:io';
import 'package:easy_toolkit/model/file_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;

class FileUtils{

  static Future<FilePickerResult?> pickFiles() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    return result;
  }

  static Future<String?> pickFolder() async{
    return await FilePicker.platform.getDirectoryPath();
  }

  static replaceFileName(String filePath,String text,String replace) {
    // 获取文件的目录路径和文件名
    String directory = path.dirname(filePath);
    String fileName = path.basenameWithoutExtension(filePath);
    String extension = path.extension(filePath);
    // 新文件路径
    String newFilePath = path.join(directory, fileName.replaceAll(RegExp(r'text'), replace),extension);
    // 创建File对象
    File file = File(filePath);
    // 重命名文件
    file.renameSync(newFilePath);
    log('文件格式更改成功！');
  }

  static reformatFile(String filePath, FileModel newFile, {int? index}) {
    // 获取文件的目录路径和文件名
    String directory = path.dirname(filePath);
    String fileName = path.basenameWithoutExtension(filePath);
    String extension = path.extension(filePath);
    String newFileName = fileName;
    if(newFile.replace != null){
      if(newFile.origin != null){
        newFileName = newFileName.replaceAll(RegExp(newFile.origin!), newFile.replace!);
      }else{
        newFileName = "${newFile.replace!}$index";
      }
    }
    // 新文件路径
    String newFilePath = path.join(directory, newFileName,newFile.extension ?? extension);
    // 创建File对象
    File file = File(filePath);
    // 重命名文件
    file.renameSync(newFilePath);
    log('文件格式更改成功！');
  }
}