import 'package:flutter/material.dart';

class Spinner extends StatelessWidget {
  Spinner() : super(key: Key('spinner'));
  /*
  Spinner({Key: key, this.renderer}) : super(key: key);

  final SpinnerRenderer renderer;
  */

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
            child: SizedBox(
                child: CircularProgressIndicator(strokeWidth: 3.0),
                height: 24.0,
                width: 24.0)));
  }
}
