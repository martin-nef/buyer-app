import 'package:flutter/cupertino.dart';

class FullScreenContainer extends Container {
  FullScreenContainer({BuildContext context, Widget child})
      : super(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: child,
        );
}
