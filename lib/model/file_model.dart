import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    String? dirName,
    String? origin,
    String? replace,
    String? extension
  }) = _FileModel;
}
