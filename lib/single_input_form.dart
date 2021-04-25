import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubmitButton extends MaterialButton {
  SubmitButton(Function onSubmit)
      : super(
          autofocus: false,
          clipBehavior: Clip.antiAlias,
          onPressed: onSubmit,
        );
}
