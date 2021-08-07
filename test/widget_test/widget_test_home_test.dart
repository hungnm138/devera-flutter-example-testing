import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_testing/widget_test/widget_test_classes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Test if Person widget display age, first name, and last name.",
      (WidgetTester widgetTester) async {
    const firstName = "Devera";
    const lastName = "Academy";
    const age = 32;

    // Builds and renders a widget in a testing environment.
    // Equivalent of inserting a 'Person' widget into the widget tree of
    // an app and invoking 'build()' to render it.
    await widgetTester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: WidgetTest(firstName, lastName, age),
    ));

    // Calling 'text()' will try to find a 'Text' widget containing a
    // string that is equal to the given string.
    final firstNameFinder = find.text(firstName);
    final lastNameFinder = find.text(lastName);
    final ageFinder = find.text("$age");

    expect(firstNameFinder, findsOneWidget);
    expect(lastNameFinder, findsOneWidget);
    expect(ageFinder, findsOneWidget);
  });

  testWidgets("Test if desired icon is displayed.",
      (WidgetTester widgetTester) async {
    final wantedIcon = Icon(Icons.check);

    await widgetTester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: WidgetTest2(wantedIcon),
    ));
    // Triggers a rebuild after 100 milliseconds
    await widgetTester.pump(Duration(milliseconds: 100));

    // Attempts to find the widgets whose current widget is the given widget.
    // (#widgetoverload)
    final iconFinder = find.byWidget(wantedIcon);

    // Tries to find widgets by type. Will not find subtypes of the given
    // widget, though.
    final widgetTypeFinder = find.byType(Icon);

    expect(iconFinder, findsOneWidget);
    expect(widgetTypeFinder, findsWidgets);
  });
}
