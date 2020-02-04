
import 'package:flutter/material.dart';


class Tecnologia {
  String nome;
  String foto;

  Tecnologia(this.nome, this.foto);
}

class HelloListView extends StatelessWidget {
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
    List<Tecnologia> tecs = [
      Tecnologia('Cachorro1', 'assets/images/mongo.png'),
      Tecnologia('Cachorro2','assets/images/adonis.png'),
      Tecnologia('Cachorro3','assets/images/expresss.jpg'),
      Tecnologia('Cachorro4','assets/images/javascript.png'),
    ];

    return ListView.builder(
          itemCount: tecs.length,
          itemExtent: 300,
          itemBuilder: (context, index){
            Tecnologia tec = tecs[index];
            return _img(tec.foto);
      });
  }

  _img(String caminho) {
    //Image.network('https://abrilsuperinteressante.files.wordpress.com/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png');
    return
      Image.asset(caminho, fit: BoxFit.cover,);
  }
}
