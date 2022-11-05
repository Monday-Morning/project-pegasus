import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail.freezed.dart';
part 'user_detail.g.dart';

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    required String name,
    String? details,
    // User user,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}
