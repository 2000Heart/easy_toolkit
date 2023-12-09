// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileModel {
  String? get dirName => throw _privateConstructorUsedError;
  String? get origin => throw _privateConstructorUsedError;
  String? get replace => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call(
      {String? dirName, String? origin, String? replace, String? extension});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dirName = freezed,
    Object? origin = freezed,
    Object? replace = freezed,
    Object? extension = freezed,
  }) {
    return _then(_value.copyWith(
      dirName: freezed == dirName
          ? _value.dirName
          : dirName // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      replace: freezed == replace
          ? _value.replace
          : replace // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileModelImplCopyWith<$Res>
    implements $FileModelCopyWith<$Res> {
  factory _$$FileModelImplCopyWith(
          _$FileModelImpl value, $Res Function(_$FileModelImpl) then) =
      __$$FileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? dirName, String? origin, String? replace, String? extension});
}

/// @nodoc
class __$$FileModelImplCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$FileModelImpl>
    implements _$$FileModelImplCopyWith<$Res> {
  __$$FileModelImplCopyWithImpl(
      _$FileModelImpl _value, $Res Function(_$FileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dirName = freezed,
    Object? origin = freezed,
    Object? replace = freezed,
    Object? extension = freezed,
  }) {
    return _then(_$FileModelImpl(
      dirName: freezed == dirName
          ? _value.dirName
          : dirName // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      replace: freezed == replace
          ? _value.replace
          : replace // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FileModelImpl implements _FileModel {
  const _$FileModelImpl(
      {this.dirName, this.origin, this.replace, this.extension});

  @override
  final String? dirName;
  @override
  final String? origin;
  @override
  final String? replace;
  @override
  final String? extension;

  @override
  String toString() {
    return 'FileModel(dirName: $dirName, origin: $origin, replace: $replace, extension: $extension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileModelImpl &&
            (identical(other.dirName, dirName) || other.dirName == dirName) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.replace, replace) || other.replace == replace) &&
            (identical(other.extension, extension) ||
                other.extension == extension));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dirName, origin, replace, extension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      __$$FileModelImplCopyWithImpl<_$FileModelImpl>(this, _$identity);
}

abstract class _FileModel implements FileModel {
  const factory _FileModel(
      {final String? dirName,
      final String? origin,
      final String? replace,
      final String? extension}) = _$FileModelImpl;

  @override
  String? get dirName;
  @override
  String? get origin;
  @override
  String? get replace;
  @override
  String? get extension;
  @override
  @JsonKey(ignore: true)
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
