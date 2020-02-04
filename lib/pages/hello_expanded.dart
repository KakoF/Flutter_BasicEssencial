
import 'package:flutter/material.dart';

class HelloExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Itens'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 7,
          child: _carrossel(),
        ),
        Expanded(
          flex: 3,
          child: _carrossel(),
        )
      ],
    );
  }

  _img(String caminho) {
    //Image.network('https://abrilsuperinteressante.files.wordpress.com/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png');
    return
      Image.asset(caminho);
  }

  _carrossel() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: PageView(
        children: <Widget>[
          _img('assets/images/mongo.png'),
          _img('assets/images/adonis.png'),
          _img('assets/images/expresss.jpg'),
          _img('assets/images/javascript.png'),
        ],
      ),
    );
  }
}
