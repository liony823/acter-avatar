import 'package:acter_avatar/acter_avatar.dart';

/// Helper class for defining avatar type.
/// Currently supported modes are Space/Group Chat (default), DM, Group DM.
class AvatarOptions {
  // Primary avatar. Having it null would switch to fallback.
  AvatarInfo? avatar;
  // Secondary group avatars. Having it null would switch to fallback.
  List<AvatarInfo>? groupAvatars;
  double? size;
  double? groupAvatarSize;

  /// Default usage .i.e. Space/Group Chat. Group avatars will appear as secondary badges.
  AvatarOptions(
      {required this.avatar,
      required this.groupAvatars,
      this.size,
      this.groupAvatarSize});

  /// useful for setting DM/Private Chat avatar.
  AvatarOptions.DM(this.avatar, {this.size});

  /// useful for setting Group DM chat. Group avatars will appear as stacked avatars.
  AvatarOptions.GroupDM(this.groupAvatars, {this.groupAvatarSize});
}
