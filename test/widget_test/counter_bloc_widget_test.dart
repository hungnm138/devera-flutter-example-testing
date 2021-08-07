import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example_testing/unit_test_blocs/counter_bloc.dart';
import 'package:flutter_example_testing/widget_test/widget_with_counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

class CounterBlocMock extends MockBloc<CounterEvent, int>
    implements CounterBloc {}

void main() {
  final counterBloc = CounterBlocMock();
  whenListen(counterBloc, Stream.fromIterable([0, 1, 2]));

  testWidgets("Test widget with CounterBloc",
      (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(
      MaterialApp(
        home: BlocProvider<CounterBloc>.value(
          value: counterBloc,
          child: Center(child: const WidgetWithCounterBloc()),
        ),
      ),
    );

    expect(counterBloc.state, equals(2));
  });
}
