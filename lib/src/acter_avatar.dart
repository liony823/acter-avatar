import 'package:acter_avatar/acter_avatar.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final log = Logger('ActerAvatar');

/// ActerAvatar allows you to display the different types of Avatars in the
/// acter.global app.
///
/// If no avatar is found, the widget renders the fallback according to the
/// configured `DisplayMode`. If an avatar is found, that is being shown. Any
/// image resizing (for memory purposes) has to be done beforehand, the image
/// is shown as given.
class ActerAvatar extends StatefulWidget {
  /// Defining avatars type and configuration. See [AvatarOptions]
  final AvatarOptions options;

  ActerAvatar({
    Key? key,
    required this.options,
  }) : super(
            key: key ??
                Key('avatar-${options.avatar.uniqueId}-${options.size}'));

  @override
  _ActerAvatar createState() => _ActerAvatar();
}

class _ActerAvatar extends State<ActerAvatar> {
  bool imgSuccess = false;
  ImageProvider<Object>? avatar;

  @override
  void initState() {
    super.initState();
    _refreshAvatar();
  }

  @override
  void didUpdateWidget(ActerAvatar oldWidget) {
    super.didUpdateWidget(oldWidget);
    final avatarInfo = widget.options.avatar;
    final oldAvatarInfo = oldWidget.options.avatar;
    if (avatarInfo.avatar != oldAvatarInfo.avatar ||
        avatarInfo.avatarFuture != oldAvatarInfo.avatarFuture) {
      _refreshAvatar();
    }
  }

  void _refreshAvatar() {
    final avatarInfo = widget.options.avatar;
    ImageStreamListener listener =
        ImageStreamListener(setImage, onError: setImageError);

    // reset
    avatar = null;
    imgSuccess = false;

    if (avatarInfo.avatar != null) {
      avatarInfo.avatar!.resolve(ImageConfiguration()).addListener(listener);
    } else if (avatarInfo.avatarFuture != null) {
      fetchImageProvider(listener);
    }
  }

  void fetchImageProvider(ImageStreamListener listener) async {
    final avatarInfo = widget.options.avatar;
    var res = await avatarInfo.avatarFuture!;
    res!.resolve(ImageConfiguration()).addListener(listener);
    avatar = res;
  }

  void setImage(ImageInfo image, bool sync) {
    if (mounted) {
      setState(() => imgSuccess = true);
    }
  }

  void setImageError(Object obj, StackTrace? st) {
    if (mounted) {
      setState(() => imgSuccess = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final avatarInfo = widget.options.avatar;
    final child =
        GestureDetector(onTap: avatarInfo.onAvatarTap, child: inner(context));
    return tooltipMsgWithChild(avatarInfo, child);
  }

  Widget inner(
    BuildContext context,
  ) {
    final avatarInfo = widget.options.avatar;
    if (avatarInfo.avatar != null && imgSuccess == true) {
      return renderWithAvatar(context, avatarInfo.avatar!);
    } else if (avatar != null && imgSuccess == true) {
      return renderWithAvatar(context, avatar!);
    } else {
      return renderFallback(context);
    }
  }

  void avatarError(Object error, StackTrace? stackTrace) {
    final avatarInfo = widget.options.avatar;
    log.warning(
      'Error loading avatar for ${avatarInfo.uniqueId}. Returning to fallback.',
      error,
      stackTrace,
    );
    if (mounted) {
      setState(() {
        avatar = null;
        imgSuccess = false;
      });
    }
  }

  Widget tooltipMsgWithChild(AvatarInfo avatar, Widget child) {
    switch (avatar.tooltip) {
      case TooltipStyle.DisplayName:
        return Tooltip(
          message: avatar.displayName ?? avatar.uniqueId,
          child: child,
        );
      case TooltipStyle.UniqueId:
        return Tooltip(message: avatar.uniqueId, child: child);
      case TooltipStyle.Combined:
        var message = avatar.uniqueName ?? avatar.uniqueId;
        if (avatar.displayName != null) {
          message = '${avatar.displayName} (${avatar.uniqueId})';
        }
        return Tooltip(message: message, child: child);
      case TooltipStyle.None:
        return child;
    }
  }

  Widget renderWithAvatar(BuildContext context, ImageProvider avatar) {
    return widget.options.when(
        // default render .i.e. Group Chat/Space
        (avatarInfo, parentBadges, onTapParentBadges, size, badgesSize) =>
            _renderDefault(
                avatar, parentBadges, onTapParentBadges, size, badgesSize),
        // render for DM
        DM: (avatarInfo, size) => _renderDM(avatar, size),
        // render for Group DM
        GroupDM: ((avatarInfo, groupAvatarsInfo, size, groupAvatarSize) =>
            _renderGroupDM(avatar, groupAvatarsInfo, size)));
  }

  Widget _renderDefault(
    ImageProvider avatar,
    List<AvatarInfo>? badges,
    Function()? onTapParentBadges,
    double? size,
    double? badgesSize,
  ) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: size ?? 48,
          width: size ?? 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: avatar,
              onError: avatarError,
            ),
          ),
        ),
        // if badges specified, render it.
        if (badges != null && badges.isNotEmpty)
          renderBadges(
              context, widget.options as DefaultAvatarOptions, badgesSize),
      ],
    );
  }

  Widget _renderDM(ImageProvider avatar, double? size) => CircleAvatar(
        foregroundImage: avatar,
        onForegroundImageError: avatarError,
        radius: size ?? 24,
      );

  Widget _renderGroupDM(
      ImageProvider avatar, List<AvatarInfo>? groupAvatarsInfo, double? size) {
    return groupAvatarsInfo != null && groupAvatarsInfo.isNotEmpty
        ? Stack(
            alignment: Alignment.bottomLeft,
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                foregroundImage: avatar,
                onForegroundImageError: avatarError,
                radius: size ?? 24,
              ),
              Positioned(
                left: -7,
                bottom: -5,
                child: tooltipMsgWithChild(
                  groupAvatarsInfo[0],
                  CircleAvatar(
                    foregroundImage: groupAvatarsInfo[0].avatar,
                    radius: size ?? 24,
                  ),
                ),
              ),
              groupAvatarsInfo.length > 1
                  ? Positioned.fill(
                      bottom: -5,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 15,
                          height: 15,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '+${groupAvatarsInfo.length - 1}',
                            style: const TextStyle(fontSize: 8),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          )
        : CircleAvatar(
            foregroundImage: avatar,
            onForegroundImageError: avatarError,
            radius: size ?? 24,
          );
  }

  Widget renderBadges(
    BuildContext context,
    DefaultAvatarOptions options,
    double? badgesSize,
  ) {
    final size = badgesSize ?? 20;
    final badges = options.parentBadges!;
    double badgeOverflow = size / 5;
    final badgesLength = badges.length;
    final thresholdCount = badgesLength <= 3 ? badgesLength : 3;

    List<Widget> children = badges
        .getRange(0, thresholdCount)
        .map(
          (badge) => ActerAvatar(
            options: AvatarOptions(badge, size: size),
          ),
        )
        .cast<Widget>()
        .toList();

    if (badgesLength > 3) {
      children.add(Container(
        width: 10,
        height: 10,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        child: Text(
          '+${badgesLength - 3}',
          style: const TextStyle(fontSize: 8),
          textScaler: TextScaler.linear(0.7),
        ),
      ));
    }

    return InkWell(
      onTap: options.onTapParentBadges,
      child: Positioned(
        bottom: -badgeOverflow,
        right: -badgeOverflow,
        child: Wrap(
          spacing: -5,
          children: children,
        ),
      ),
    );
  }

  Widget renderFallback(BuildContext context) {
    final avatarOptions = widget.options;
    double textFallbackSize = avatarOptions.size ?? 48;
    double multiFallbackSize =
        avatarOptions.size == null ? 48 : avatarOptions.size! * 2.0;
    if (avatarOptions is AvatarOptionsDM) {
      // User fallback mode
      return MultiAvatar(
        uniqueId: avatarOptions.avatar.uniqueId,
        size: multiFallbackSize,
      );
    } else if (avatarOptions is AvatarOptionsGroupDM) {
      // Group fallback mode
      return avatarOptions.groupAvatars != null &&
              avatarOptions.groupAvatars!.isNotEmpty
          ? Stack(
              alignment: Alignment.bottomLeft,
              clipBehavior: Clip.none,
              children: [
                MultiAvatar(
                  uniqueId: avatarOptions.avatar.uniqueId,
                  size: multiFallbackSize,
                ),
                Positioned(
                  left: -7,
                  bottom: -5,
                  child: tooltipMsgWithChild(
                    avatarOptions.groupAvatars![0],
                    MultiAvatar(
                      uniqueId: avatarOptions.groupAvatars![0].uniqueId,
                      size: multiFallbackSize,
                    ),
                  ),
                ),
                avatarOptions.groupAvatars!.length > 1
                    ? Positioned.fill(
                        bottom: -5,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 15,
                            height: 15,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '+${avatarOptions.groupAvatars!.length - 1}',
                              style: const TextStyle(fontSize: 8),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            )
          : MultiAvatar(
              uniqueId: avatarOptions.avatar.uniqueId,
              size: multiFallbackSize,
            );
    }

    /// Fallback
    else {
      final parentBadges = (avatarOptions as DefaultAvatarOptions).parentBadges;
      final size = avatarOptions.badgesSize ?? 16;
      return Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          TextAvatar(
            text: avatarOptions.avatar.displayName ??
                avatarOptions.avatar.uniqueId,
            sourceText: avatarOptions.avatar.uniqueId,
            size: textFallbackSize,
            shape: Shape.Rectangle,
            fontSize: parentBadges == null ? 6 : null,
          ),
          if (parentBadges != null && parentBadges.isNotEmpty)
            renderBadges(context, avatarOptions, size),
        ],
      );
    }
  }
}
