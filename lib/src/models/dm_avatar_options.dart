import 'package:acter_avatar/src/models/avatar_info.dart';
import 'package:acter_avatar/src/models/avatar_options.dart';

/// Class representing avatar for Direct Message/Private Chat (DM).
class DMAvatarOptions extends AvatarOptions {
  DMAvatarOptions({required this.dmAvatar, this.avatarSize});
  @override
  AvatarInfo get avatar => dmAvatar;

  @override
  List<AvatarInfo>? get parentAvatars => null;

  @override
  double? get size => avatarSize ?? 24.0;

  @override
  double? get parentSize => null;

  final AvatarInfo dmAvatar;
  final double? avatarSize;
}
