import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Voltar', style: TextStyle(color: Colors.white)),
            onPressed: () => _onClickVoltar(context)
        ),
      ),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, 'Voltei da Tela 2');
  }
}
