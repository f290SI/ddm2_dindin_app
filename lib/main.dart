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
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Color(0xFF171717),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF282828),
          unselectedItemColor: Colors.grey.shade600,
        ),
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
        future: helper.getCotacaoMoeda(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none) {
            return Center(
              child: SizedBox(
                width: 250,
                height: 250,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballScaleMultiple,
                  color: Colors.amberAccent,
                ),
              ),
            );
          } else {
            var moedas = snapshot.data;
            pages = [
              DolarPage(moeda: Moeda.fromJson(moedas['USD'])),
              EuroPage(moeda: Moeda.fromJson(moedas['EUR'])),
              BitCoinPage(moeda: Moeda.fromJson(moedas['BTC'])),
            ];
            return pages[_selectedIndex];
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amberAccent,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dollarSign), label: 'Dolar'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.euroSign), label: 'Euro'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.btc), label: 'BTC'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
