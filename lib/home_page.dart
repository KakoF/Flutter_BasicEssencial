

import 'package:flutter/material.dart';
import 'package:primeiro/pages/hello_page1.dart';
import 'package:primeiro/pages/hello_page2.dart';
import 'package:primeiro/pages/hello_page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
        centerTitle: true,
      ),
      body: _body(context)
    );
  }

  _body(context) {
   return SingleChildScrollView(
     child: Container(
          color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text(),
                _carrossel(),
                _buttons(context),
                _text(),
                _carrossel(),
              ],
            )
          ),
   );
  }

  _buttons(context) {
    return Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _button(context,'ListView', () => _onClickNavigator(context, HelloPage1())),
                    _button(context,'Page 2',() => _onClickNavigator(context, HelloPage2())),
                    _button(context,'Page 3', () => _onClickNavigator(context, HelloPage3())),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _button(context,'Snack',_onClickSnack),
                    _button(context,'Dialog',_onClickDialog),
                    _button(context,'Touch',_onClickTouch),
                  ],
                )
              ],
            );
  }



  void _onClickNavigator(context, Widget page) async {
    String retorno = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return page;
    }));
    print('>> $retorno');
  }


  _onClickTouch() {
    print('asda');
  }

  _onClickDialog() {
    print('asda');
  }

  _onClickSnack() {
    print('asda');
  }

  _text() {
    return Text("Hello",
        style: TextStyle(
          fontSize: 30,
          color: Color(0xff212438),
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dotted,
        ));
  }

  _img(String caminho) {
    //Image.network('https://abrilsuperinteressante.files.wordpress.com/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png');
    return
      Image.asset(caminho);
  }

  _button(BuildContext context, String textButton, Function onPressed){
    return RaisedButton(
      color: Colors.green,
      child: Text(textButton, style: TextStyle(color: Colors.white),),
      onPressed:  onPressed
    );
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
