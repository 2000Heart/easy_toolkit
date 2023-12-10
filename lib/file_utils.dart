import 'dart:developer';
import 'dart:io';
import 'package:easy_toolkit/model/file_model.dart';
import 'package:easy_toolkit/toast_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:url_launcher/url_launcher.dart';

class FileUtils{

  static Future<FilePickerResult?> pickFiles() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    return result;
  }

  static Future<String?> pickFolder() async{
    return await FilePicker.platform.getDirectoryPath();
  }

  static Future reformatFiles(List<PlatformFile> files, FileModel newFile) async{
    List<File> newFiles = [];
    bool noIssue = true;
    while(noIssue){

    }
  }

  static Future<File?> reformatFile(String filePath, FileModel newFile, {int? index}) async {
    // 获取文件的目录路径和文件名
    String dirName = path.dirname(filePath);
    String fileName = path.basenameWithoutExtension(filePath);
    String extension = path.extension(filePath);
    String newFileName = fileName;
    if (newFile.replace != null) {
      if (newFile.origin != null) {
        newFileName =
            fileName.replaceAll(RegExp(newFile.origin!), newFile.replace!);
      } else {
        newFileName = "${newFile.replace!}$index";
      }
    }
    String newFilePath = path.join(newFile.dirName ?? dirName,
        "$newFileName${newFile.extension ?? extension}");
    return File(newFilePath);

    //   // 重命名文件
    //   File result = file.renameSync(newFilePath);
    //   var uri = Uri.file(path.dirname(result.path),windows: Platform.isWindows);
    //   if(!Directory(uri.toFilePath()).existsSync()){
    //     ToastUtils.show("处理文件遇到错误");
    //     return;
    //   }
    //   if(await canLaunchUrl(uri)){
    //    launchUrl(uri);
    //   }else{
    //     ToastUtils.show("处理文件遇到错误");
    //   }
    //   ToastUtils.show("文件更改成功！");
    // }
  }
}