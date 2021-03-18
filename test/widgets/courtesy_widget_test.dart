import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_utils/test_widget.dart';

void main() {
  late String title;
  late String message;
  late String action;

  setUp(() {
    final faker = Faker();

    title = faker.lorem.words(4).join();
    message = faker.lorem.sentence();
    action = faker.lorem.word();
  });

  testWidgets(
    'with only main title',
        (WidgetTester tester) async {
      await tester.pumpWidget(TestWidget(child: CourtesyWidget(title: title)));

      expect(find.text(title), findsOneWidget);
      expect(find.text(message), findsNothing);

      final actionFinder = find.widgetWithText(ElevatedButton, action);
      expect(actionFinder, findsNothing);
    },
  );

  testWidgets(
    'with main title and message',
        (WidgetTester tester) async {
      await tester.pumpWidget(TestWidget(
        child: CourtesyWidget(
          title: title,
          message: message,
        ),
      ));

      expect(find.text(title), findsOneWidget);
      expect(find.text(message), findsOneWidget);

      final actionFinder = find.widgetWithText(ElevatedButton, action);
      expect(actionFinder, findsNothing);
    },
  );

  testWidgets(
    'with main title, message, disabled action',
        (WidgetTester tester) async {
      await tester.pumpWidget(TestWidget(
        child: CourtesyWidget(
          title: title,
          message: message,
          action: action,
        ),
      ));

      expect(find.text(title), findsOneWidget);
      expect(find.text(message), findsOneWidget);

      final actionFinder = find.widgetWithText(ElevatedButton, action);
      expect(actionFinder, findsOneWidget);

      final actionButton =
      actionFinder
          .evaluate()
          .first
          .widget as ElevatedButton;
      expect(actionButton is ElevatedButton, isTrue);
      expect(actionButton.enabled, isFalse);
    },
  );

  testWidgets(
    'with main title, message, enabled action',
        (WidgetTester tester) async {
      await tester.pumpWidget(TestWidget(
        child: CourtesyWidget(
          title: title,
          message: message,
          action: action,
          onPressed: () {},
        ),
      ));

      expect(find.text(title), findsOneWidget);
      expect(find.text(message), findsOneWidget);

      final actionFinder = find.widgetWithText(ElevatedButton, action);
      expect(actionFinder, findsOneWidget);

      final actionButton =
      actionFinder
          .evaluate()
          .first
          .widget as ElevatedButton;
      expect(actionButton is ElevatedButton, isTrue);
      expect(actionButton.enabled, isTrue);
    },
  );

  testWidgets(
    'with leading, main title, message, disabled action',
        (WidgetTester tester) async {
      final leadingKey = Key('LEADING');

      await tester.pumpWidget(TestWidget(
        child: CourtesyWidget(
          leading: Container(
              key: leadingKey
          ),
          title: title,
          message: message,
          action: action,
        ),
      ));

      expect(find.byKey(leadingKey), findsOneWidget);
      expect(find.text(title), findsOneWidget);
      expect(find.text(message), findsOneWidget);

      final actionFinder = find.widgetWithText(ElevatedButton, action);
      expect(actionFinder, findsOneWidget);

      final actionButton =
      actionFinder
          .evaluate()
          .first
          .widget as ElevatedButton;
      expect(actionButton is ElevatedButton, isTrue);
      expect(actionButton.enabled, isFalse);
    },
  );
}
