import 'package:acter_avatar/acter_avatar.dart';

/// Abstract class representing the set of avatars.
abstract class AvatarOptions {
  AvatarInfo? get avatar;
  List<AvatarInfo>? get parentAvatars;
  double? get size;
  double? get parentSize;
}
