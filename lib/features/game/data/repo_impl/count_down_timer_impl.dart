import 'package:dots_boxes_game/features/game/domain/repo/count_down_timer_repo.dart';

class CountDownTimerImpl implements CountDownTimerRepo{
  @override
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}