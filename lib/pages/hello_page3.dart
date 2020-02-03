import 'package:flutter/material.dart';
import 'package:primeiro/widgets/component_button.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: ComponentButton('Voltar', onPressed: () => _onClickVoltar(context),color: Colors.green)
      ),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, 'Voltei da Tela 3');
  }
}