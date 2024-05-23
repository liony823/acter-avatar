# Acter Avatar

Acter Avatar is a package to generate different shapes of avatars by leveraging the combination of [Multiavatar](https://pub.dev/packages/multiavatar) library and [Colorize Text Avatar](https://pub.dev/packages/colorize_text_avatar) . The package is a derivative work from [Acter a3](https://github.com/acterglobal/a3) ongoing development.

# CI Test Status

<a href="https://github.com/acterglobal/acter-avatar/actions"><img src="https://github.com/acterglobal/acter-avatar/workflows/acter-avatar-tests/badge.svg" alt="Build Status"></a>

## Parameters of ActerAvatar:

`ActerAvatar` widget supports `AvatarOptions` object which is most interesting to look in first. It is main configuration parameter which can be initialised in various ways depending upon your avatar UI needs.

```dart
// Default constructor usage e.g. Space/Group Chat which can support badges.
  AvatarOptions(AvatarInfo avatar,
      {List<AvatarInfo>? parentBadges,
      double? size,
      double? badgesSize})

```

`AvatarOptions` also support named constructors with parameter for DM/Group DM avatars.

```dart
  // useful for setting DM/Private Chat avatar.
  AvatarOptions.DM(AvatarInfo avatar, {double? size});
  // useful for setting Group DM chat. Group avatars will appear as stacked avatars.
  AvatarOptions.GroupDM(AvatarInfo avatar,
      {List<AvatarInfo>? groupAvatars,
      double? size,
      double? groupAvatarSize})
```

## AvatarInfo

`AvatarInfo` class allows you to store avatar related data. See API documentation for reference.

### Usage of ActerAvatar 😎

`ActerAvatar` takes `AvatarOptions` along with few interaction params to render avatar.

```dart
final avatarOptions = AvatarOptions(
  AvatarInfo(
        uniqueId: '@aliKah:lorem.org',
        displayName: 'Ali Akalın',
        avatar: NetworkImage(*someImageLink*), // can be any image provider .i.e. AssetImage, MemoryImage and NetworkImage etc.
        tooltip = ToolTipStyle.Combined), size: 20);

   return ActerAvatar(
        options: avatarOptions,
        );
```

Alternatively you can also provide avatar future which will show fallback if data isn't readily available. It can also be left as `null` which will have same effect.

```dart
 final avatarOptions = AvatarOptions(
  AvatarInfo(
        uniqueId: '@aliKah:lorem.org',
        displayName: 'Ali Akalın',
        avatarFuture: someFutureOrNull), size = 20,
 );
  return ActerAvatar(
        options: avatarOptions,  // can be any image provider .i.e. AssetImage, MemoryImage and NetworkImage etc.
      ),
```

You can also provide list of `AvatarInfo` in `parentBadges` or `groupAvatars` in `AvatarOptions.groupDM()` named constructor for displaying parent badges and circular stacked group avatars respectively.

```dart
  final avatarOptions = AvatarOptions(
    AvatarInfo(
        uniqueId: '@aliKah:lorem.org',
        displayName: 'Ali Akalın',
        avatar: NetworkImage(*someImageLink*)),
    parentBadges: [
      // more `AvatarInfo` here.
    ],
    size: 20,
    parentBadgesSize: 10,
  );
    return ActerAvatar(
        options: avatarOptions,
      );
```

For more info regarding avatar usage. See our `Example` section.

## Credits & License

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](/LICENSE)

Fork of the great [Colorize Text Avatar](https://pub.dev/packages/colorize_text_avatar) package by [Deniz Çolak](https://github.com/deniscolak).

Any additional work: © 2023 Acter Association, Denmark
