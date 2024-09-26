import 'dart:math';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line.freezed.dart';

@freezed
class LineEntity with _$LineEntity {
  const factory LineEntity({
    required Point<int> p1,
    required Point<int> p2,
    @Default(false) bool completed,
    ValueNotifier<Color>? notifier,
  }) = _LineEntity;

  static bool equals(LineEntity l1, LineEntity l2){
    if(l1.p1 == l2.p1 && l1.p2 == l2.p2){
      return true;
    }
    return false;
  }
}
