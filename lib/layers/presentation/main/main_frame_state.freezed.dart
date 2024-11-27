// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_frame_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainFrameState {
  int get selectedIndex => throw _privateConstructorUsedError;
  List<Widget> get widgetOptions => throw _privateConstructorUsedError;

  /// Create a copy of MainFrameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainFrameStateCopyWith<MainFrameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFrameStateCopyWith<$Res> {
  factory $MainFrameStateCopyWith(
          MainFrameState value, $Res Function(MainFrameState) then) =
      _$MainFrameStateCopyWithImpl<$Res, MainFrameState>;
  @useResult
  $Res call({int selectedIndex, List<Widget> widgetOptions});
}

/// @nodoc
class _$MainFrameStateCopyWithImpl<$Res, $Val extends MainFrameState>
    implements $MainFrameStateCopyWith<$Res> {
  _$MainFrameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainFrameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? widgetOptions = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      widgetOptions: null == widgetOptions
          ? _value.widgetOptions
          : widgetOptions // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainFrameStateImplCopyWith<$Res>
    implements $MainFrameStateCopyWith<$Res> {
  factory _$$MainFrameStateImplCopyWith(_$MainFrameStateImpl value,
          $Res Function(_$MainFrameStateImpl) then) =
      __$$MainFrameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, List<Widget> widgetOptions});
}

/// @nodoc
class __$$MainFrameStateImplCopyWithImpl<$Res>
    extends _$MainFrameStateCopyWithImpl<$Res, _$MainFrameStateImpl>
    implements _$$MainFrameStateImplCopyWith<$Res> {
  __$$MainFrameStateImplCopyWithImpl(
      _$MainFrameStateImpl _value, $Res Function(_$MainFrameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFrameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? widgetOptions = null,
  }) {
    return _then(_$MainFrameStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      widgetOptions: null == widgetOptions
          ? _value._widgetOptions
          : widgetOptions // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$MainFrameStateImpl implements _MainFrameState {
  _$MainFrameStateImpl(
      {this.selectedIndex = 0, final List<Widget> widgetOptions = const []})
      : _widgetOptions = widgetOptions;

  @override
  @JsonKey()
  final int selectedIndex;
  final List<Widget> _widgetOptions;
  @override
  @JsonKey()
  List<Widget> get widgetOptions {
    if (_widgetOptions is EqualUnmodifiableListView) return _widgetOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgetOptions);
  }

  @override
  String toString() {
    return 'MainFrameState(selectedIndex: $selectedIndex, widgetOptions: $widgetOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainFrameStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._widgetOptions, _widgetOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex,
      const DeepCollectionEquality().hash(_widgetOptions));

  /// Create a copy of MainFrameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainFrameStateImplCopyWith<_$MainFrameStateImpl> get copyWith =>
      __$$MainFrameStateImplCopyWithImpl<_$MainFrameStateImpl>(
          this, _$identity);
}

abstract class _MainFrameState implements MainFrameState {
  factory _MainFrameState(
      {final int selectedIndex,
      final List<Widget> widgetOptions}) = _$MainFrameStateImpl;

  @override
  int get selectedIndex;
  @override
  List<Widget> get widgetOptions;

  /// Create a copy of MainFrameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainFrameStateImplCopyWith<_$MainFrameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
