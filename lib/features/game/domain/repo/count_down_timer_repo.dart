abstract interface class CountDownTimerRepo {
  Stream<int> tick({required int ticks});
}