

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_frame_state.freezed.dart';

@freezed
class MainFrameState with _$MainFrameState {
  factory MainFrameState({
    @Default(0) int selectedIndex,
    @Default([])List<Widget> widgetOptions,
  }) = _MainFrameState;
}