part of 'timer_count_down_bloc.dart';

@freezed
class TimerCountDownEvent with _$TimerCountDownEvent {
  const factory TimerCountDownEvent.introCountDownStart({
    required int duration,
}) = _Started;

  const factory TimerCountDownEvent.introTicked({
    required int duration,
}) = _IntroTicked;

  const factory TimerCountDownEvent.userTurnStart({
    required int duration,
  }) = _StartUserTurn;

  const factory TimerCountDownEvent.userTurnTicked({
    required int duration,
  }) = _UserCountDownTickedEvent;

  const factory TimerCountDownEvent.resetUserTimeout() = _UserCountDownResetEvent;
}
