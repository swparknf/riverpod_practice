// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  List<ChatMessage> get chatMessageList => throw _privateConstructorUsedError;
  List<ChatMessage> get rawMessageList => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      String roomId,
      List<ChatMessage> chatMessageList,
      List<ChatMessage> rawMessageList});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? roomId = null,
    Object? chatMessageList = null,
    Object? rawMessageList = null,
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
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      chatMessageList: null == chatMessageList
          ? _value.chatMessageList
          : chatMessageList // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      rawMessageList: null == rawMessageList
          ? _value.rawMessageList
          : rawMessageList // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      String roomId,
      List<ChatMessage> chatMessageList,
      List<ChatMessage> rawMessageList});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? roomId = null,
    Object? chatMessageList = null,
    Object? rawMessageList = null,
  }) {
    return _then(_$ChatStateImpl(
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
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      chatMessageList: null == chatMessageList
          ? _value._chatMessageList
          : chatMessageList // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      rawMessageList: null == rawMessageList
          ? _value._rawMessageList
          : rawMessageList // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  _$ChatStateImpl(
      {this.isLoading = true,
      this.isError = false,
      this.errorMessage = '',
      this.roomId = '',
      final List<ChatMessage> chatMessageList = const [],
      final List<ChatMessage> rawMessageList = const []})
      : _chatMessageList = chatMessageList,
        _rawMessageList = rawMessageList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String roomId;
  final List<ChatMessage> _chatMessageList;
  @override
  @JsonKey()
  List<ChatMessage> get chatMessageList {
    if (_chatMessageList is EqualUnmodifiableListView) return _chatMessageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessageList);
  }

  final List<ChatMessage> _rawMessageList;
  @override
  @JsonKey()
  List<ChatMessage> get rawMessageList {
    if (_rawMessageList is EqualUnmodifiableListView) return _rawMessageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rawMessageList);
  }

  @override
  String toString() {
    return 'ChatState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, roomId: $roomId, chatMessageList: $chatMessageList, rawMessageList: $rawMessageList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            const DeepCollectionEquality()
                .equals(other._chatMessageList, _chatMessageList) &&
            const DeepCollectionEquality()
                .equals(other._rawMessageList, _rawMessageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      errorMessage,
      roomId,
      const DeepCollectionEquality().hash(_chatMessageList),
      const DeepCollectionEquality().hash(_rawMessageList));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  factory _ChatState(
      {final bool isLoading,
      final bool isError,
      final String errorMessage,
      final String roomId,
      final List<ChatMessage> chatMessageList,
      final List<ChatMessage> rawMessageList}) = _$ChatStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  String get roomId;
  @override
  List<ChatMessage> get chatMessageList;
  @override
  List<ChatMessage> get rawMessageList;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
