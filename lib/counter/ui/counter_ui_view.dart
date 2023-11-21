import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/counter/ui/counter_ui_page.dart';

import '../cubit/counter_cubit.dart';

class CounterUi extends StatelessWidget {
  const CounterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterUip(),
    );
  }
}
