part of 'timer_count_down_bloc.dart';

@freezed
class TimerCountDownState with _$TimerCountDownState {
  const factory TimerCountDownState.initial(int duration) = _Initial;
  const factory TimerCountDownState.inProgressIntro(int duration) = _InProgressIntro;
  const factory TimerCountDownState.completeIntro() = _Completed;

  const factory TimerCountDownState.inProgressUserTurn(int duration) = _InProgressUserTurn;
  const factory TimerCountDownState.completeUserTurn() = _CompletedUserTurn;
}
