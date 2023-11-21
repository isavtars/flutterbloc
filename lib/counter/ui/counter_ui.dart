import 'package:flutter/material.dart';
import 'package:flutterbloc/counter/ui/custome_btns.dart';

class CounterUi extends StatelessWidget {
  const CounterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text("Counter App")),
      body: Column(
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
              child: const Center(
                child: Text(
                  "0",
                  style: TextStyle(
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
                    onPressed: () {},
                    iconns: Icons.add,
                    backgroundColour: Colors.green),
                CustomeBtns(
                    onPressed: () {},
                    iconns: Icons.remove,
                    backgroundColour: Colors.red)
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
