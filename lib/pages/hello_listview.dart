
import 'package:flutter/material.dart';


class Tecnologia {
  String nome;
  String foto;

  Tecnologia(this.nome, this.foto);
}

class HelloListView extends StatelessWidget {

  bool gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Itens'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list),onPressed: (){
            this.gridView = false;
          }),
          IconButton(icon: Icon(Icons.grid_on),onPressed: (){
            this.gridView = true;
          })
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    List<Tecnologia> tecs = [
      Tecnologia('Tecnologia 1', 'assets/images/mongo.png'),
      Tecnologia('Tecnologia 2','assets/images/adonis.png'),
      Tecnologia('Tecnologia 3','assets/images/expresss.jpg'),
      Tecnologia('Tecnologia 4','assets/images/javascript.png'),
    ];

    return ListView.builder(
          itemCount: tecs.length,
          itemExtent: 300,
          itemBuilder: (context, index){
            Tecnologia tec = tecs[index];
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
               _img(tec.foto),
                Container(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(16),
                      ),
                        child: Text(tec.nome, style: TextStyle(fontSize: 26, color: Colors.white))
                    )
                )
              ],
            );
      });
  }

  _img(String caminho) {
    //Image.network('https://abrilsuperinteressante.files.wordpress.com/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png');
    return
      Image.asset(caminho, fit: BoxFit.cover,);
  }
}
