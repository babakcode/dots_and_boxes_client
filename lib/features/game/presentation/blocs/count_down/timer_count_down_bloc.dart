import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dots_boxes_game/features/game/domain/repo/count_down_timer_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_count_down_event.dart';

part 'timer_count_down_state.dart';

part 'timer_count_down_bloc.freezed.dart';

class TimerCountDownBloc
    extends Bloc<TimerCountDownEvent, TimerCountDownState> {
  final CountDownTimerRepo _countDownTimerRepo;
  static const int _duration = 3;
  static const int userTurnDuration = 15;

  StreamSubscription<int>? _tickerSubscription;

  TimerCountDownBloc({
    required CountDownTimerRepo countDownRepo,
  })  : _countDownTimerRepo = countDownRepo,
        super(const TimerCountDownState.initial(_duration)) {
    on<TimerCountDownEvent>((event, emit) {
      event.map(
        introCountDownStart: (value) {
          _tickerSubscription?.cancel();
          _tickerSubscription = _countDownTimerRepo
              .tick(ticks: value.duration)
              .listen((duration) =>
                  add(TimerCountDownEvent.introTicked(duration: duration)));
        },
        introTicked: (value) {
          emit(value.duration > 0
              ? TimerCountDownState.inProgressIntro(value.duration)
              : const TimerCountDownState.completeIntro());
        },
        userTurnStart: (value) {
          _tickerSubscription?.cancel();
          _tickerSubscription = _countDownTimerRepo
              .tick(ticks: value.duration)
              .listen((duration) =>
              add(TimerCountDownEvent.userTurnTicked(duration: duration)));
        },
        userTurnTicked: (value) {
          emit(value.duration > 0
              ? TimerCountDownState.inProgressUserTurn(value.duration)
              : const TimerCountDownState.completeUserTurn());
        },
        resetUserTimeout: (value) {
          _tickerSubscription?.cancel();
        },
      );
    });
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
