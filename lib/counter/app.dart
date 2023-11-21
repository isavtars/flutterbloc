import 'package:flutter/material.dart';

import 'ui/counter_ui_view.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key})
      : super(debugShowCheckedModeBanner: false, home: const CounterUi());
}
