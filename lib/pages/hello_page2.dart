import 'package:flutter/material.dart';
import 'package:primeiro/widgets/component_button.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: ComponentButton('Voltar', onPressed: () => _onClickVoltar(context), color: Colors.red)
      ),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, 'Voltei da Tela 2');
  }
}
