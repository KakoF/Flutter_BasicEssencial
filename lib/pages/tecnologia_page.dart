import 'package:flutter/material.dart';
import 'package:primeiro/pages/hello_listview.dart';

class TecnologiaPage extends StatelessWidget {

  final Tecnologia tecnologia;

  TecnologiaPage(this.tecnologia);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tecnologia.nome),
      ),
      body: Image.asset(tecnologia.foto),
    );
  }
}
