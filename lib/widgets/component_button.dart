import 'package:flutter/material.dart';

class ComponentButton extends StatelessWidget {

  String textButton;
  Function onPressed;
  Color color;

  ComponentButton(this.textButton, {@required this.onPressed, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: color,
        child: Text(textButton, style: TextStyle(color: Colors.white),),
        onPressed:  onPressed
    );
  }
}
