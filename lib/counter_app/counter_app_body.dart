import 'package:flutter/material.dart';
import 'package:sample_flutter_ui/counter_app/widgets/app_title.dart';
import 'package:sample_flutter_ui/counter_app/widgets/history.dart';

class CounterAppBody extends StatefulWidget {
  // Create a [CounterAppBody] widget.
  const CounterAppBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterAppBody> createState() => _CounterAppBody();
}

class _CounterAppBody extends State<CounterAppBody> {
  int counter = 0;
  //Keeps track of the counter status when '+1' is pressed.
  List<int> increaseHistory = [];

  //Increases the counter by 1.
  void increase() {
    setState(() {
      counter++;
      increaseHistory = List<int>.from(increaseHistory)..add(counter);
    });
  }

//Decrease the counter by 1.
  void decrease() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Title widget
            const AppTitle(),
            //The counter widget
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: decrease, child: const Text('-')),
                Text('$counter'),
                ElevatedButton(
                  onPressed: increase,
                  child: const Text('+'),
                ),
              ],
            ),

            //History widget
            HistoryWidget(
              increasesHistory: increaseHistory,
            ),
          ],
        ),
      ),
    );
  }
}
