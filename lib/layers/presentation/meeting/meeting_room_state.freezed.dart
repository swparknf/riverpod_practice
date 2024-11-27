// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeetingRoomState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<MeetingRoom> get meetingRoomList => throw _privateConstructorUsedError;

  /// Create a copy of MeetingRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingRoomStateCopyWith<MeetingRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRoomStateCopyWith<$Res> {
  factory $MeetingRoomStateCopyWith(
          MeetingRoomState value, $Res Function(MeetingRoomState) then) =
      _$MeetingRoomStateCopyWithImpl<$Res, MeetingRoomState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      List<MeetingRoom> meetingRoomList});
}

/// @nodoc
class _$MeetingRoomStateCopyWithImpl<$Res, $Val extends MeetingRoomState>
    implements $MeetingRoomStateCopyWith<$Res> {
  _$MeetingRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingRoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? meetingRoomList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      meetingRoomList: null == meetingRoomList
          ? _value.meetingRoomList
          : meetingRoomList // ignore: cast_nullable_to_non_nullable
              as List<MeetingRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingRoomStateImplCopyWith<$Res>
    implements $MeetingRoomStateCopyWith<$Res> {
  factory _$$MeetingRoomStateImplCopyWith(_$MeetingRoomStateImpl value,
          $Res Function(_$MeetingRoomStateImpl) then) =
      __$$MeetingRoomStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      List<MeetingRoom> meetingRoomList});
}

/// @nodoc
class __$$MeetingRoomStateImplCopyWithImpl<$Res>
    extends _$MeetingRoomStateCopyWithImpl<$Res, _$MeetingRoomStateImpl>
    implements _$$MeetingRoomStateImplCopyWith<$Res> {
  __$$MeetingRoomStateImplCopyWithImpl(_$MeetingRoomStateImpl _value,
      $Res Function(_$MeetingRoomStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingRoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? meetingRoomList = null,
  }) {
    return _then(_$MeetingRoomStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      meetingRoomList: null == meetingRoomList
          ? _value._meetingRoomList
          : meetingRoomList // ignore: cast_nullable_to_non_nullable
              as List<MeetingRoom>,
    ));
  }
}

/// @nodoc

class _$MeetingRoomStateImpl implements _MeetingRoomState {
  _$MeetingRoomStateImpl(
      {this.isLoading = true,
      this.isError = false,
      this.errorMessage = '',
      final List<MeetingRoom> meetingRoomList = const []})
      : _meetingRoomList = meetingRoomList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final String errorMessage;
  final List<MeetingRoom> _meetingRoomList;
  @override
  @JsonKey()
  List<MeetingRoom> get meetingRoomList {
    if (_meetingRoomList is EqualUnmodifiableListView) return _meetingRoomList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meetingRoomList);
  }

  @override
  String toString() {
    return 'MeetingRoomState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, meetingRoomList: $meetingRoomList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingRoomStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._meetingRoomList, _meetingRoomList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, errorMessage,
      const DeepCollectionEquality().hash(_meetingRoomList));

  /// Create a copy of MeetingRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingRoomStateImplCopyWith<_$MeetingRoomStateImpl> get copyWith =>
      __$$MeetingRoomStateImplCopyWithImpl<_$MeetingRoomStateImpl>(
          this, _$identity);
}

abstract class _MeetingRoomState implements MeetingRoomState {
  factory _MeetingRoomState(
      {final bool isLoading,
      final bool isError,
      final String errorMessage,
      final List<MeetingRoom> meetingRoomList}) = _$MeetingRoomStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  List<MeetingRoom> get meetingRoomList;

  /// Create a copy of MeetingRoomState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingRoomStateImplCopyWith<_$MeetingRoomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
