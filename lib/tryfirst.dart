import 'dart:developer';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;

class FileUtils{

  static Future renameFiles() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    result?.files.map((e) => reformatFile(e.path ?? "", format: "jpg"));
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

  static reformatFile(String filePath, {String? format,String? from,String? replace}) {
    // 获取文件的目录路径和文件名
    String directory = path.dirname(filePath);
    String fileName = path.basenameWithoutExtension(filePath);
    String extension = path.extension(filePath);
    String newFileName = fileName;
    if(replace != null){
      if(from != null){
        newFileName = newFileName.replaceAll(RegExp(from), replace);
      }else{
        newFileName += replace;
      }
    }
    // 新文件路径
    String newFilePath = path.join(directory, newFileName,format ?? extension);
    // 创建File对象
    File file = File(filePath);
    // 重命名文件
    file.renameSync(newFilePath);
    log('文件格式更改成功！');
  }
}