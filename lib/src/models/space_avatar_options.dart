import 'package:acter_avatar/src/models/avatar_info.dart';
import 'package:acter_avatar/src/models/avatar_options.dart';

/// Class representing set of avatars for a space.
class SpaceAvatarOptions extends AvatarOptions {
  SpaceAvatarOptions(this.avatarSize, this.parentAvatarSize,
      {required this.spaceAvatar, this.parentSpaceAvatars});

  @override
  AvatarInfo get avatar => spaceAvatar;

  @override
  List<AvatarInfo>? get parentAvatars => parentSpaceAvatars;

  @override
  double? get size => avatarSize ?? 48.0;

  @override
  double? get parentSize => parentAvatarSize ?? 24.0;

  final AvatarInfo spaceAvatar;
  final List<AvatarInfo>? parentSpaceAvatars;
  final double? avatarSize;
  final double? parentAvatarSize;
}
