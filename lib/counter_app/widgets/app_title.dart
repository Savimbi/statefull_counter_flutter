import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  //Creates an [AppTitle] widget.
  const AppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.remove,
          color: Colors.redAccent,
        ),
        Text('Enhanced Counter app!'),
        Icon(
          Icons.add,
          color: Colors.lightGreen,
        ),
      ],
    );
  }
}
