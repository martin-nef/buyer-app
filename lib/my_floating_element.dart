import 'package:buyer_app/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFloatingElement extends Row {
  MyFloatingElement(Counter counter)
      : super(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => counter.increment(),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () => counter.decrement(),
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
          ],
        );
}
