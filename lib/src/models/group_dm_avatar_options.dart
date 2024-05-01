import 'package:acter_avatar/src/models/avatar_info.dart';
import 'package:acter_avatar/src/models/avatar_options.dart';

/// Class representing set of avatars for a group DM.
class GroupDMAvatarOptions extends AvatarOptions {
  GroupDMAvatarOptions({
    required this.groupAvatars,
    this.avatarSize,
    this.parentAvatarSize,
  });

  @override
  AvatarInfo? get avatar => null;

  @override
  List<AvatarInfo> get parentAvatars => groupAvatars;

  @override
  double? get size => avatarSize ?? 48.0;

  @override
  double? get parentSize => parentAvatarSize ?? 24.0;

  final List<AvatarInfo> groupAvatars;
  final double? avatarSize;
  final double? parentAvatarSize;
}
