import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({int initialvalue = 10}) : super(initialvalue);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);
}
