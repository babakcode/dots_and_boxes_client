part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    String? progressStatus,
    @Default(0) int seenCount,
    TelInfoEntity? info,
  }) = _Initial;
}
