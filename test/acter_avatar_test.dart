// This is a basic Flutter widget test.

// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:acter_avatar/acter_avatar.dart';
import 'package:acter_avatar/src/constants/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Circular Avatar tests', () {
    testWidgets('User Circle Avatar with specified size',
        (WidgetTester tester) async {
      final options =
          AvatarOptions.DM(AvatarInfo(uniqueId: 'test:acter.org'), size: 36);
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.circleAvatarKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final Size avatarSize =
          tester.getSize(find.byKey(TestKeys.circleAvatarKey));

      // should expect specified fallback size
      // diameter (size) is twice of radius size so we would expect x2 of specified size
      expect(avatarSize.height, equals(36 * 2));
      expect(avatarSize.width, equals(36 * 2));
    });
    testWidgets('User Circle Avatar with fallback size',
        (WidgetTester tester) async {
      final options = AvatarOptions.DM(AvatarInfo(uniqueId: 'test:acter.org'));
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.circleAvatarKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final Size avatarSize =
          tester.getSize(find.byKey(TestKeys.circleAvatarKey));
      // should expect default fallback avatar size
      expect(avatarSize.height, equals(48));
      expect(avatarSize.width, equals(48));
    });

    testWidgets('User Circle Avatar with NetworkImage render',
        (WidgetTester tester) async {
      final String imagePath =
          'https://st.depositphotos.com/1898481/5087/i/450/depositphotos_50878063-stock-photo-people.jpg';
      final image = NetworkImage(imagePath);
      final options = AvatarOptions.DM(
          AvatarInfo(uniqueId: '@test:acter.org', avatar: image));
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.circleAvatarKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final avatarFinder = find.byKey(TestKeys.circleAvatarKey);
      // should expect `ActerAvatar` is present
      expect(avatarFinder, findsOneWidget);
      final avatar = avatarFinder.evaluate().first.widget as ActerAvatar;
      // should expect Asset Image in case of image render.
      expect(avatar.options.avatar.avatar, NetworkImage(imagePath));
    });
  });

  group('Space Avatar tests', () {
    testWidgets('Space Avatar with specified size',
        (WidgetTester tester) async {
      final options =
          AvatarOptions(AvatarInfo(uniqueId: 'test:acter.org'), size: 36);
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.widgetKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final Size avatarSize = tester.getSize(find.byKey(TestKeys.widgetKey));

      // should expect specified fallback size
      expect(avatarSize.height, equals(36));
      expect(avatarSize.width, equals(36));
    });
    testWidgets('Space Avatar with fallback size', (WidgetTester tester) async {
      final options = AvatarOptions(AvatarInfo(uniqueId: 'test:acter.org'));
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.widgetKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final Size avatarSize = tester.getSize(find.byKey(TestKeys.widgetKey));
      // should expect default fallback avatar size
      expect(avatarSize.height, equals(48));
      expect(avatarSize.width, equals(48));
    });

    testWidgets('Space Avatar with NetworkImage render',
        (WidgetTester tester) async {
      final String imagePath =
          'https://st5.depositphotos.com/38460822/63964/i/600/depositphotos_639649504-stock-photo-mail-sign-sign-alphabet-made.jpg';
      final image = NetworkImage(imagePath);
      final options =
          AvatarOptions(AvatarInfo(uniqueId: '@test:acter.org', avatar: image));
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.widgetKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final avatarFinder = find.byKey(TestKeys.widgetKey);
      // should expect `ActerAvatar` is present
      expect(avatarFinder, findsOneWidget);
      final avatar = avatarFinder.evaluate().first.widget as ActerAvatar;
      // should expect Asset Image in case of image render.
      expect(avatar.options.avatar.avatar, NetworkImage(imagePath));
    });

    testWidgets('Space Avatar Parent Badge specified size',
        (WidgetTester tester) async {
      final options = AvatarOptions(AvatarInfo(uniqueId: '@test:acter.org'),
          parentBadges: [AvatarInfo(uniqueId: 'Acter-Global')], badgesSize: 35);
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.widgetKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final avatarFinder = find.byKey(TestKeys.widgetKey);
      // should expect `ActerAvatar` is present
      expect(avatarFinder, findsOneWidget);
      final innerAvatar = tester.getSize(find.descendant(
          of: avatarFinder, matching: find.byType(ActerAvatar)));
      // expect parent badge specified size.
      expect(innerAvatar.height, equals(35));
      expect(innerAvatar.width, equals(35));
    });
    testWidgets('Space Avatar Parent Badge fallback size',
        (WidgetTester tester) async {
      final options = AvatarOptions(AvatarInfo(uniqueId: '@test:acter.org'),
          parentBadges: [AvatarInfo(uniqueId: 'Acter-Global')]);
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.widgetKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final avatarFinder = find.byKey(TestKeys.widgetKey);
      // should expect `ActerAvatar` is present
      expect(avatarFinder, findsOneWidget);
      final innerAvatar = tester.getSize(find.descendant(
          of: avatarFinder, matching: find.byType(ActerAvatar)));
      // expect parent badge fallback size.
      expect(innerAvatar.height, equals(16));
      expect(innerAvatar.width, equals(16));
    });
    testWidgets('Space Avatar Parent badge with NetworkImage render',
        (WidgetTester tester) async {
      final String imagePath =
          'https://st5.depositphotos.com/38460822/63964/i/600/depositphotos_639649504-stock-photo-mail-sign-sign-alphabet-made.jpg';
      final image = NetworkImage(imagePath);
      final options =
          AvatarOptions(AvatarInfo(uniqueId: '@test:acter.org'), parentBadges: [
        AvatarInfo(uniqueId: 'Acter-Global', avatar: image),
      ]);
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.widgetKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final avatarFinder = find.byKey(TestKeys.widgetKey);
      // should expect `ActerAvatar` is present
      expect(avatarFinder, findsOneWidget);
      final avatar = avatarFinder.evaluate().first.widget as ActerAvatar;
      // should expect parent badge Asset Image in case of image render.
      expect((avatar.options as DefaultAvatarOptions).parentBadges?[0].avatar,
          NetworkImage(imagePath));
    });
  });

  group('Circular Stacked Avatar tests', () {
    testWidgets('Circular Stacked Avatars with specified size',
        (WidgetTester tester) async {
      final options = AvatarOptions.GroupDM(
        AvatarInfo(uniqueId: '@test:acter.org'),
        groupAvatars: [AvatarInfo(uniqueId: '@kyra:acter.org')],
        size: 24,
      );
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.stackedAvatarKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final Size avatarSize =
          tester.getSize(find.byKey(TestKeys.stackedAvatarKey));

      // should expect first avatar specified size
      // diameter (size) is twice of radius size so we would expect x2 of specified size
      expect(avatarSize.height, equals(24 * 2));
      expect(avatarSize.width, equals(24 * 2));

      final secondAvatarSize = tester.getSize(find.byType(Positioned));

      // should expect second avatar specified size
      // diameter (size) is twice of radius size so we would expect x2 of specified size
      expect(secondAvatarSize.height, equals(24 * 2));
      expect(secondAvatarSize.width, equals(24 * 2));
    });
    testWidgets('Circular Stacked Avatars with fallback size',
        (WidgetTester tester) async {
      final options = AvatarOptions.GroupDM(
        AvatarInfo(uniqueId: '@test:acter.org'),
        groupAvatars: [AvatarInfo(uniqueId: '@kyra:acter.org')],
      );
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.stackedAvatarKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final Size avatarSize =
          tester.getSize(find.byKey(TestKeys.stackedAvatarKey));

      // should expect first avatar fallback size
      expect(avatarSize.height, equals(48));
      expect(avatarSize.width, equals(48));

      final secondAvatarSize = tester.getSize(find.byType(Positioned));

      // should expect second avatar specified size
      expect(secondAvatarSize.height, equals(48));
      expect(secondAvatarSize.width, equals(48));
    });
    testWidgets('Circular Stacked Avatars with NetworkImage render',
        (WidgetTester tester) async {
      final String imagePath =
          'https://st.depositphotos.com/1898481/5087/i/450/depositphotos_50878063-stock-photo-people.jpg';
      final String image2Path =
          'https://st.depositphotos.com/1898481/4683/i/600/depositphotos_46839071-stock-photo-male-person-silhouette.jpg';
      final image = NetworkImage(imagePath);
      final secondaryImage = NetworkImage(image2Path);
      final options = AvatarOptions.GroupDM(
        AvatarInfo(uniqueId: '@test:acter.org', avatar: image),
        groupAvatars: [
          AvatarInfo(uniqueId: '@kyra:acter.org', avatar: secondaryImage)
        ],
      );
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ActerAvatar(
            key: TestKeys.stackedAvatarKey,
            options: options,
          ),
        ),
      ));
      await tester.pumpAndSettle();
      final avatarFinder = find.byKey(TestKeys.stackedAvatarKey);
      // should expect `ActerAvatar` is present
      expect(avatarFinder, findsOneWidget);
      final avatar = avatarFinder.evaluate().first.widget as ActerAvatar;
      // should expect Asset Image in case of image render.
      expect(avatar.options.avatar.avatar, NetworkImage(imagePath));
      expect((avatar.options as AvatarOptionsGroupDM).groupAvatars?[0].avatar,
          NetworkImage(image2Path));
    });
  });

  group('Acter avatars interaction', () {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    void onTapped(BuildContext ctx, String name) {
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        content: Text(name),
        duration: const Duration(milliseconds: 750),
      ));
    }

    testWidgets('test primary avatar interaction', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        navigatorKey: navigatorKey,
        home: Scaffold(
          body: Builder(builder: (context) {
            final options1 = AvatarOptions.DM(
              AvatarInfo(
                uniqueId: '@test:acter.org',
                onAvatarTap: () => onTapped(context, 'DM Avatar tapped'),
              ),
            );
            final options2 = AvatarOptions.GroupDM(
                AvatarInfo(uniqueId: '@test:acter.org'),
                groupAvatars: [
                  AvatarInfo(
                    uniqueId: '@kyra:acter.org',
                    onAvatarTap: () =>
                        onTapped(context, 'Group DM Avatar tapped'),
                  )
                ]);
            final options3 = AvatarOptions(
              AvatarInfo(
                uniqueId: '@test:acter.org',
                onAvatarTap: () => onTapped(context, 'Default Avatar tapped'),
              ),
            );
            return Column(
              children: <Widget>[
                ActerAvatar(
                  key: TestKeys.circleAvatarKey,
                  options: options1,
                ),
                ActerAvatar(
                  key: TestKeys.stackedAvatarKey,
                  options: options2,
                ),
                ActerAvatar(
                  key: TestKeys.widgetKey,
                  options: options3,
                ),
              ],
            );
          }),
        ),
      ));
      final dmGestureFinder = find.descendant(
          of: find.byKey(TestKeys.circleAvatarKey),
          matching: find.byType(GestureDetector));
      // we have found the Gesture Detector, proceed with tester operation
      expect(dmGestureFinder, findsOneWidget);

      final groupDMGestureFinder = find.descendant(
          of: find.byKey(TestKeys.stackedAvatarKey),
          matching: find.byType(GestureDetector));
      // we have found the Gesture Detector, proceed with tester operation
      expect(groupDMGestureFinder, findsOneWidget);

      final defaultAvatarGestureFinder = find.descendant(
          of: find.byKey(TestKeys.widgetKey),
          matching: find.byType(GestureDetector));
      // we have found the Gesture Detector, proceed with tester operation
      expect(defaultAvatarGestureFinder, findsOneWidget);

      await tester.tap(dmGestureFinder);
      await tester.pump();
      expect(find.text('DM Avatar tapped'), findsOneWidget);

      // dismissing snackbar
      ScaffoldMessenger.of(navigatorKey.currentContext!).clearSnackBars();

      await tester.tap(groupDMGestureFinder);
      await tester.pump();
      expect(find.text('Group DM Avatar tapped'), findsOneWidget);

      // dismissing snackbar
      ScaffoldMessenger.of(navigatorKey.currentContext!).clearSnackBars();

      await tester.tap(defaultAvatarGestureFinder);
      await tester.pump();
      expect(find.text('Default Avatar tapped'), findsOneWidget);
    });

    testWidgets('test avatar parent badge interaction',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        navigatorKey: navigatorKey,
        home: Scaffold(
          body: Builder(builder: (context) {
            final options = AvatarOptions(
                AvatarInfo(
                  uniqueId: '@test:acter.org',
                ),
                parentBadges: [
                  AvatarInfo(
                    uniqueId: '@acter-global:acter.org',
                    tooltip: TooltipStyle.UniqueId,
                    onAvatarTap: () =>
                        onTapped(context, 'Parent Badge 1 Tapped'),
                  ),
                  AvatarInfo(
                    uniqueId: '@acter-activism:acter.org',
                    tooltip: TooltipStyle.UniqueId,
                    onAvatarTap: () =>
                        onTapped(context, 'Parent Badge 2 Tapped'),
                  ),
                  AvatarInfo(
                    uniqueId: '@acter-contributors:acter.org',
                    tooltip: TooltipStyle.UniqueId,
                    onAvatarTap: () =>
                        onTapped(context, 'Parent Badge 3 Tapped'),
                  )
                ]);

            return Column(
              children: <Widget>[
                ActerAvatar(
                  key: TestKeys.widgetKey,
                  options: options,
                ),
              ],
            );
          }),
        ),
      ));
      final widgetFinder = find.byKey(TestKeys.widgetKey);
      // we have found the Gesture Detector, proceed with tester operation
      expect(widgetFinder, findsOneWidget);

      final parentBadge1Finder = find.descendant(
          of: find.byTooltip('@acter-global:acter.org'),
          matching: find.byType(GestureDetector));
      // we have found the Gesture Detector, proceed with tester operation

      await tester.tap(parentBadge1Finder);
      await tester.pump();
      expect(parentBadge1Finder, findsOneWidget);
      expect(find.text('Parent Badge 1 Tapped'), findsOneWidget);

      // dismissing snackbar
      ScaffoldMessenger.of(navigatorKey.currentContext!).clearSnackBars();

      final parentBadge2Finder = find.descendant(
          of: find.byTooltip('@acter-activism:acter.org'),
          matching: find.byType(GestureDetector));
      // we have found the Gesture Detector, proceed with tester operation
      expect(parentBadge2Finder, findsOneWidget);

      await tester.tap(parentBadge2Finder);
      await tester.pump();
      expect(find.text('Parent Badge 2 Tapped'), findsOneWidget);

      // dismissing snackbar
      ScaffoldMessenger.of(navigatorKey.currentContext!).clearSnackBars();

      final parentBadge3Finder = find.descendant(
          of: find.byTooltip('@acter-contributors:acter.org'),
          matching: find.byType(GestureDetector));
      // we have found the Gesture Detector, proceed with tester operation
      expect(parentBadge2Finder, findsOneWidget);
      await tester.tap(parentBadge3Finder);
      await tester.pump();
      expect(find.text('Parent Badge 3 Tapped'), findsOneWidget);

      // dismissing snackbar
      ScaffoldMessenger.of(navigatorKey.currentContext!).clearSnackBars();
    });
  });
}
