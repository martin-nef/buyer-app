import 'package:flutter/cupertino.dart';

class FullScreenContainer extends Container {
  FullScreenContainer({required BuildContext context, Widget? child})
      : super(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: child),
        );
}
