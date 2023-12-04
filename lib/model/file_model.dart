import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required String dirName,
    required String name,
    required String extension
  }) = _FileModel;
}
