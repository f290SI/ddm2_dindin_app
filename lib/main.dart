import 'dart:ui';

import 'package:ddm2_dindin_app/pages/bitcoin_page.dart';
import 'package:ddm2_dindin_app/pages/dolar_page.dart';
import 'package:ddm2_dindin_app/pages/euro_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'helper/cotacao_helper.dart';
import 'model/moeda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var helper = CotacaoHelper();
  var currencies;
  String bitCoin = "BitCoin";
  static Moeda moeda;

  var _selectedIndex = 0;

  var pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: helper.getCotacaoMoeda('usd'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none) {
            return Center(
              child: SizedBox(
                width: 250,
                height: 250,
                child: LoadingIndicator(indicatorType: Indicator.ballScaleMultiple, color: Colors.blueAccent,),
              ),
            );
          } else {
            moeda = Moeda.fromJson(snapshot.data);
            pages = [
              DolarPage(moeda: moeda),
              EuroPage(moeda: moeda),
              BitCoinPage(moeda: moeda,),
            ];
            return pages[_selectedIndex];
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.dollarSign), label: 'Dolar'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.euroSign), label: 'Euro'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.btc), label: 'BTC'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
