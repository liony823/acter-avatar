// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AvatarOptions {
  AvatarInfo get avatar => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)
        $default, {
    required TResult Function(AvatarInfo avatar, double? size) DM,
    required TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)
        GroupDM,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult? Function(AvatarInfo avatar, double? size)? DM,
    TResult? Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult Function(AvatarInfo avatar, double? size)? DM,
    TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value) $default, {
    required TResult Function(AvatarOptionsDM value) DM,
    required TResult Function(AvatarOptionsGroupDM value) GroupDM,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DefaultAvatarOptions value)? $default, {
    TResult? Function(AvatarOptionsDM value)? DM,
    TResult? Function(AvatarOptionsGroupDM value)? GroupDM,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value)? $default, {
    TResult Function(AvatarOptionsDM value)? DM,
    TResult Function(AvatarOptionsGroupDM value)? GroupDM,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvatarOptionsCopyWith<AvatarOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarOptionsCopyWith<$Res> {
  factory $AvatarOptionsCopyWith(
          AvatarOptions value, $Res Function(AvatarOptions) then) =
      _$AvatarOptionsCopyWithImpl<$Res, AvatarOptions>;
  @useResult
  $Res call({AvatarInfo avatar, double? size});
}

/// @nodoc
class _$AvatarOptionsCopyWithImpl<$Res, $Val extends AvatarOptions>
    implements $AvatarOptionsCopyWith<$Res> {
  _$AvatarOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarInfo,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultAvatarOptionsImplCopyWith<$Res>
    implements $AvatarOptionsCopyWith<$Res> {
  factory _$$DefaultAvatarOptionsImplCopyWith(_$DefaultAvatarOptionsImpl value,
          $Res Function(_$DefaultAvatarOptionsImpl) then) =
      __$$DefaultAvatarOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AvatarInfo avatar,
      List<AvatarInfo>? parentBadges,
      dynamic Function()? onTapParentBadges,
      double? size,
      double? badgesSize});
}

/// @nodoc
class __$$DefaultAvatarOptionsImplCopyWithImpl<$Res>
    extends _$AvatarOptionsCopyWithImpl<$Res, _$DefaultAvatarOptionsImpl>
    implements _$$DefaultAvatarOptionsImplCopyWith<$Res> {
  __$$DefaultAvatarOptionsImplCopyWithImpl(_$DefaultAvatarOptionsImpl _value,
      $Res Function(_$DefaultAvatarOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? parentBadges = freezed,
    Object? onTapParentBadges = freezed,
    Object? size = freezed,
    Object? badgesSize = freezed,
  }) {
    return _then(_$DefaultAvatarOptionsImpl(
      null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarInfo,
      parentBadges: freezed == parentBadges
          ? _value._parentBadges
          : parentBadges // ignore: cast_nullable_to_non_nullable
              as List<AvatarInfo>?,
      onTapParentBadges: freezed == onTapParentBadges
          ? _value.onTapParentBadges
          : onTapParentBadges // ignore: cast_nullable_to_non_nullable
              as dynamic Function()?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      badgesSize: freezed == badgesSize
          ? _value.badgesSize
          : badgesSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$DefaultAvatarOptionsImpl implements DefaultAvatarOptions {
  const _$DefaultAvatarOptionsImpl(this.avatar,
      {final List<AvatarInfo>? parentBadges,
      this.onTapParentBadges,
      this.size,
      this.badgesSize})
      : _parentBadges = parentBadges;

  @override
  final AvatarInfo avatar;
  final List<AvatarInfo>? _parentBadges;
  @override
  List<AvatarInfo>? get parentBadges {
    final value = _parentBadges;
    if (value == null) return null;
    if (_parentBadges is EqualUnmodifiableListView) return _parentBadges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic Function()? onTapParentBadges;
  @override
  final double? size;
  @override
  final double? badgesSize;

  @override
  String toString() {
    return 'AvatarOptions(avatar: $avatar, parentBadges: $parentBadges, onTapParentBadges: $onTapParentBadges, size: $size, badgesSize: $badgesSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultAvatarOptionsImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality()
                .equals(other._parentBadges, _parentBadges) &&
            (identical(other.onTapParentBadges, onTapParentBadges) ||
                other.onTapParentBadges == onTapParentBadges) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.badgesSize, badgesSize) ||
                other.badgesSize == badgesSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      avatar,
      const DeepCollectionEquality().hash(_parentBadges),
      onTapParentBadges,
      size,
      badgesSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultAvatarOptionsImplCopyWith<_$DefaultAvatarOptionsImpl>
      get copyWith =>
          __$$DefaultAvatarOptionsImplCopyWithImpl<_$DefaultAvatarOptionsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)
        $default, {
    required TResult Function(AvatarInfo avatar, double? size) DM,
    required TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)
        GroupDM,
  }) {
    return $default(avatar, parentBadges, onTapParentBadges, size, badgesSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult? Function(AvatarInfo avatar, double? size)? DM,
    TResult? Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
  }) {
    return $default?.call(
        avatar, parentBadges, onTapParentBadges, size, badgesSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult Function(AvatarInfo avatar, double? size)? DM,
    TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          avatar, parentBadges, onTapParentBadges, size, badgesSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value) $default, {
    required TResult Function(AvatarOptionsDM value) DM,
    required TResult Function(AvatarOptionsGroupDM value) GroupDM,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DefaultAvatarOptions value)? $default, {
    TResult? Function(AvatarOptionsDM value)? DM,
    TResult? Function(AvatarOptionsGroupDM value)? GroupDM,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value)? $default, {
    TResult Function(AvatarOptionsDM value)? DM,
    TResult Function(AvatarOptionsGroupDM value)? GroupDM,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DefaultAvatarOptions implements AvatarOptions {
  const factory DefaultAvatarOptions(final AvatarInfo avatar,
      {final List<AvatarInfo>? parentBadges,
      final dynamic Function()? onTapParentBadges,
      final double? size,
      final double? badgesSize}) = _$DefaultAvatarOptionsImpl;

  @override
  AvatarInfo get avatar;
  List<AvatarInfo>? get parentBadges;
  dynamic Function()? get onTapParentBadges;
  @override
  double? get size;
  double? get badgesSize;
  @override
  @JsonKey(ignore: true)
  _$$DefaultAvatarOptionsImplCopyWith<_$DefaultAvatarOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvatarOptionsDMImplCopyWith<$Res>
    implements $AvatarOptionsCopyWith<$Res> {
  factory _$$AvatarOptionsDMImplCopyWith(_$AvatarOptionsDMImpl value,
          $Res Function(_$AvatarOptionsDMImpl) then) =
      __$$AvatarOptionsDMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AvatarInfo avatar, double? size});
}

/// @nodoc
class __$$AvatarOptionsDMImplCopyWithImpl<$Res>
    extends _$AvatarOptionsCopyWithImpl<$Res, _$AvatarOptionsDMImpl>
    implements _$$AvatarOptionsDMImplCopyWith<$Res> {
  __$$AvatarOptionsDMImplCopyWithImpl(
      _$AvatarOptionsDMImpl _value, $Res Function(_$AvatarOptionsDMImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? size = freezed,
  }) {
    return _then(_$AvatarOptionsDMImpl(
      null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarInfo,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$AvatarOptionsDMImpl implements AvatarOptionsDM {
  const _$AvatarOptionsDMImpl(this.avatar, {this.size});

  @override
  final AvatarInfo avatar;
  @override
  final double? size;

  @override
  String toString() {
    return 'AvatarOptions.DM(avatar: $avatar, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarOptionsDMImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarOptionsDMImplCopyWith<_$AvatarOptionsDMImpl> get copyWith =>
      __$$AvatarOptionsDMImplCopyWithImpl<_$AvatarOptionsDMImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)
        $default, {
    required TResult Function(AvatarInfo avatar, double? size) DM,
    required TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)
        GroupDM,
  }) {
    return DM(avatar, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult? Function(AvatarInfo avatar, double? size)? DM,
    TResult? Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
  }) {
    return DM?.call(avatar, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult Function(AvatarInfo avatar, double? size)? DM,
    TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
    required TResult orElse(),
  }) {
    if (DM != null) {
      return DM(avatar, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value) $default, {
    required TResult Function(AvatarOptionsDM value) DM,
    required TResult Function(AvatarOptionsGroupDM value) GroupDM,
  }) {
    return DM(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DefaultAvatarOptions value)? $default, {
    TResult? Function(AvatarOptionsDM value)? DM,
    TResult? Function(AvatarOptionsGroupDM value)? GroupDM,
  }) {
    return DM?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value)? $default, {
    TResult Function(AvatarOptionsDM value)? DM,
    TResult Function(AvatarOptionsGroupDM value)? GroupDM,
    required TResult orElse(),
  }) {
    if (DM != null) {
      return DM(this);
    }
    return orElse();
  }
}

abstract class AvatarOptionsDM implements AvatarOptions {
  const factory AvatarOptionsDM(final AvatarInfo avatar, {final double? size}) =
      _$AvatarOptionsDMImpl;

  @override
  AvatarInfo get avatar;
  @override
  double? get size;
  @override
  @JsonKey(ignore: true)
  _$$AvatarOptionsDMImplCopyWith<_$AvatarOptionsDMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvatarOptionsGroupDMImplCopyWith<$Res>
    implements $AvatarOptionsCopyWith<$Res> {
  factory _$$AvatarOptionsGroupDMImplCopyWith(_$AvatarOptionsGroupDMImpl value,
          $Res Function(_$AvatarOptionsGroupDMImpl) then) =
      __$$AvatarOptionsGroupDMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AvatarInfo avatar,
      List<AvatarInfo>? groupAvatars,
      double? size,
      double? groupAvatarSize});
}

/// @nodoc
class __$$AvatarOptionsGroupDMImplCopyWithImpl<$Res>
    extends _$AvatarOptionsCopyWithImpl<$Res, _$AvatarOptionsGroupDMImpl>
    implements _$$AvatarOptionsGroupDMImplCopyWith<$Res> {
  __$$AvatarOptionsGroupDMImplCopyWithImpl(_$AvatarOptionsGroupDMImpl _value,
      $Res Function(_$AvatarOptionsGroupDMImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? groupAvatars = freezed,
    Object? size = freezed,
    Object? groupAvatarSize = freezed,
  }) {
    return _then(_$AvatarOptionsGroupDMImpl(
      null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarInfo,
      groupAvatars: freezed == groupAvatars
          ? _value._groupAvatars
          : groupAvatars // ignore: cast_nullable_to_non_nullable
              as List<AvatarInfo>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      groupAvatarSize: freezed == groupAvatarSize
          ? _value.groupAvatarSize
          : groupAvatarSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$AvatarOptionsGroupDMImpl implements AvatarOptionsGroupDM {
  const _$AvatarOptionsGroupDMImpl(this.avatar,
      {final List<AvatarInfo>? groupAvatars, this.size, this.groupAvatarSize})
      : _groupAvatars = groupAvatars;

  @override
  final AvatarInfo avatar;
  final List<AvatarInfo>? _groupAvatars;
  @override
  List<AvatarInfo>? get groupAvatars {
    final value = _groupAvatars;
    if (value == null) return null;
    if (_groupAvatars is EqualUnmodifiableListView) return _groupAvatars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? size;
  @override
  final double? groupAvatarSize;

  @override
  String toString() {
    return 'AvatarOptions.GroupDM(avatar: $avatar, groupAvatars: $groupAvatars, size: $size, groupAvatarSize: $groupAvatarSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarOptionsGroupDMImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality()
                .equals(other._groupAvatars, _groupAvatars) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.groupAvatarSize, groupAvatarSize) ||
                other.groupAvatarSize == groupAvatarSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      avatar,
      const DeepCollectionEquality().hash(_groupAvatars),
      size,
      groupAvatarSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarOptionsGroupDMImplCopyWith<_$AvatarOptionsGroupDMImpl>
      get copyWith =>
          __$$AvatarOptionsGroupDMImplCopyWithImpl<_$AvatarOptionsGroupDMImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)
        $default, {
    required TResult Function(AvatarInfo avatar, double? size) DM,
    required TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)
        GroupDM,
  }) {
    return GroupDM(avatar, groupAvatars, size, groupAvatarSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult? Function(AvatarInfo avatar, double? size)? DM,
    TResult? Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
  }) {
    return GroupDM?.call(avatar, groupAvatars, size, groupAvatarSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AvatarInfo avatar,
            List<AvatarInfo>? parentBadges,
            dynamic Function()? onTapParentBadges,
            double? size,
            double? badgesSize)?
        $default, {
    TResult Function(AvatarInfo avatar, double? size)? DM,
    TResult Function(AvatarInfo avatar, List<AvatarInfo>? groupAvatars,
            double? size, double? groupAvatarSize)?
        GroupDM,
    required TResult orElse(),
  }) {
    if (GroupDM != null) {
      return GroupDM(avatar, groupAvatars, size, groupAvatarSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value) $default, {
    required TResult Function(AvatarOptionsDM value) DM,
    required TResult Function(AvatarOptionsGroupDM value) GroupDM,
  }) {
    return GroupDM(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DefaultAvatarOptions value)? $default, {
    TResult? Function(AvatarOptionsDM value)? DM,
    TResult? Function(AvatarOptionsGroupDM value)? GroupDM,
  }) {
    return GroupDM?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DefaultAvatarOptions value)? $default, {
    TResult Function(AvatarOptionsDM value)? DM,
    TResult Function(AvatarOptionsGroupDM value)? GroupDM,
    required TResult orElse(),
  }) {
    if (GroupDM != null) {
      return GroupDM(this);
    }
    return orElse();
  }
}

abstract class AvatarOptionsGroupDM implements AvatarOptions {
  const factory AvatarOptionsGroupDM(final AvatarInfo avatar,
      {final List<AvatarInfo>? groupAvatars,
      final double? size,
      final double? groupAvatarSize}) = _$AvatarOptionsGroupDMImpl;

  @override
  AvatarInfo get avatar;
  List<AvatarInfo>? get groupAvatars;
  @override
  double? get size;
  double? get groupAvatarSize;
  @override
  @JsonKey(ignore: true)
  _$$AvatarOptionsGroupDMImplCopyWith<_$AvatarOptionsGroupDMImpl>
      get copyWith => throw _privateConstructorUsedError;
}
