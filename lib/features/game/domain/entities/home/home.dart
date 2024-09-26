import 'dart:math';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';

@freezed
class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    required Point point,
    ValueNotifier<Color>? notifier,
    @Default(false) bool filled,
  }) = _HomeEntity;

  static bool equals(HomeEntity h1, HomeEntity h2){
    if(h1.point == h2.point){
      return true;
    }
    return false;
  }
}
