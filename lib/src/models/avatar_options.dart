import 'package:acter_avatar/acter_avatar.dart';

/// Helper class for defining avatar type.
/// Currently supported modes are Space/Group Chat (default), DM, Group DM.
import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_options.freezed.dart';

@freezed
abstract class AvatarOptions with _$AvatarOptions {
  /// Default usage .i.e. Space/Group Chat. Group avatars will appear as secondary badges.
  const factory AvatarOptions(AvatarInfo avatar,
      {List<AvatarInfo>? parentBadges,
      Function()? onTapParentBadges,
      double? size,
      double? badgesSize}) = DefaultAvatarOptions;

  /// useful for setting DM/Private Chat avatar.
  const factory AvatarOptions.DM(AvatarInfo avatar, {double? size}) =
      AvatarOptionsDM;

  /// useful for setting Group DM chat. Group avatars will appear as stacked avatars.
  const factory AvatarOptions.GroupDM(AvatarInfo avatar,
      {List<AvatarInfo>? groupAvatars,
      double? size,
      double? groupAvatarSize}) = AvatarOptionsGroupDM;
}
