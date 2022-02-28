import 'package:freezed_annotation/freezed_annotation.dart';

part 'cover.g.dart';
part 'cover.freezed.dart';

@freezed
class Cover with _$Cover {
  factory Cover({
    required int id,
    required String url,
  }) = _Cover;

  factory Cover.fromJson(Map<String, dynamic> json) => _$CoverFromJson(json);
}
