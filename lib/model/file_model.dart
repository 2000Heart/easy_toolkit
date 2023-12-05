import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    String? dirName,
    String? name,
    String? extension
  }) = _FileModel;
}
