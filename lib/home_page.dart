

import 'package:flutter/material.dart';
import 'package:primeiro/drawer_list.dart';
import 'package:primeiro/pages/hello_expanded.dart';
import 'package:primeiro/pages/hello_gridview.dart';
import 'package:primeiro/pages/hello_listview.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:primeiro/pages/hello_page2.dart';
import 'package:primeiro/pages/hello_page3.dart';
import 'package:primeiro/utils/nav.dart';
import 'package:primeiro/widgets/component_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3')
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            _body(context),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.orange,
            )

          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                _onClickFab();
              },
            ),
            SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              child: Icon(Icons.favorite),
              onPressed: () {
                _onClickFab();
              },
            ),
          ],
        ),
        drawer: DrawerList(

        ),
      ),
    );
  }

  _body(context) {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.only(top: 16),
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _text(),
              _carrossel(),
              _buttons(),
              _text(),
              _carrossel(),
            ],
          )
      ),
    );
  }

  _buttons() {
    return Builder(builder: (BuildContext context) {
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ComponentButton('ListView', onPressed: () => _onClickNavigator(context, HelloListView())),
              ComponentButton('GridView', onPressed: () => _onClickNavigator(context, HelloGridView())),
              ComponentButton('Page 2', onPressed: () => _onClickNavigator(context, HelloPage2())),
              ComponentButton('Page 3', onPressed: () => _onClickNavigator(context, HelloPage3())),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ComponentButton('Snack',onPressed: () => _onClickSnack(context)),
              ComponentButton('Dialog',onPressed: () =>  _onClickDialog(context)),
              ComponentButton('Tosty',onPressed: () => _onClickToasty()),
              ComponentButton('Expanded',onPressed: () => _onClickNavigator(context, HelloExpanded())),
            ],
          )
        ],
      );
    });
  }



  void _onClickNavigator(context, Widget page) async {
    String retorno = await push(context, page);
    print('>> $retorno');
  }


  _onClickToasty() {
    print('asdas');
    Fluttertoast.showToast(
        msg: "Toast Alert",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 5,
        backgroundColor: Colors.black45,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  _onClickDialog(BuildContext context) {
    showDialog(context: context,barrierDismissible: false,  builder: (context){
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          title: Text('Dialog Flutter'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('Confirmar'),
              onPressed: (){
                Navigator.pop(context);
                print('OK');
              },
            )
          ],
        ),
      );
    });
  }

  _onClickSnack(context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('SnackBar'),
      action: SnackBarAction(
        textColor: Colors.red,
        label: 'OK',
        onPressed: (){
          print('SnackBar');
        },),
    ));
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

  _onClickFab() {
    print('Adicionar');
  }
}
