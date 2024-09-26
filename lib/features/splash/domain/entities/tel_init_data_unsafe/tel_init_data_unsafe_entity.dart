import 'package:freezed_annotation/freezed_annotation.dart';

part 'tel_init_data_unsafe_entity.freezed.dart';

@freezed
class TelInitDataUnsafeEntity with _$TelInitDataUnsafeEntity {
  const factory TelInitDataUnsafeEntity({
    required TelInitDataUnsafeEntityUser user,
  }) = _TelInitDataUnsafeEntity;
}

@freezed
class TelInitDataUnsafeEntityUser with _$TelInitDataUnsafeEntityUser {
  const factory TelInitDataUnsafeEntityUser({
    String? photoUrl,
  }) = _TelInitDataUnsafeEntityUser;
}
