import 'package:acter_avatar/src/models/avatar_info.dart';
import 'package:acter_avatar/src/models/avatar_options.dart';

/// Class representing set of avatars for group chat/room.
class GroupChatAvatarOptions extends AvatarOptions {
  GroupChatAvatarOptions({
    required this.groupAvatar,
    required this.parentGroupAvatars,
    this.avatarSize,
    this.parentAvatarSize,
  });

  @override
  AvatarInfo? get avatar => groupAvatar;

  @override
  List<AvatarInfo>? get parentAvatars => parentGroupAvatars;

  @override
  double? get size => avatarSize ?? 48.0;

  @override
  double? get parentSize => parentAvatarSize ?? 24.0;

  final AvatarInfo groupAvatar;
  final List<AvatarInfo> parentGroupAvatars;
  final double? avatarSize;
  final double? parentAvatarSize;
}
