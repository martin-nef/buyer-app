import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingAddButton extends Container {
  FloatingAddButton(void Function() onPressed)
      : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                tooltip: 'Add',
                child: Icon(Icons.add),
                onPressed: onPressed,
              ),
            ],
          ),
        );
}
