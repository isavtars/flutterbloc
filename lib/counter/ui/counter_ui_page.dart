import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/counter/cubit/counter_cubit.dart';
import 'package:flutterbloc/counter/ui/custome_btns.dart';

class CounterUip extends StatelessWidget {
  const CounterUip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text("Counter App")),
      body: BlocBuilder<CounterCubit, int>(builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "This is counter app with bloc",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 70,
                width: 100,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 2),
                      spreadRadius: 0.5,
                      blurRadius: 0.5)
                ], color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Text(
                    "$state",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomeBtns(
                      onPressed: () => context.read<CounterCubit>().increment(),
                      iconns: Icons.add,
                      backgroundColour: Colors.green),
                  CustomeBtns(
                      onPressed: () => context.read<CounterCubit>().decrement(),
                      iconns: Icons.remove,
                      backgroundColour: Colors.red)
                ],
              ),
            ),
            const Spacer(),
          ],
        );
      }),
    );
  }
}
