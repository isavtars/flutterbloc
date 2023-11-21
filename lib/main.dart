import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'counter/app.dart';
import 'counter/counter_blockobser.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green));
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
