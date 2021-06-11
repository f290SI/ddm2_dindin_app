import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:ddm2_dindin_app/pages/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({Key key, this.moedas}) : super(key: key);
  final List<Moeda> moedas;

  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  TextEditingController realController = TextEditingController();
  TextEditingController dolarController = TextEditingController();
  TextEditingController euroController = TextEditingController();
  TextEditingController bitCoinController = TextEditingController();

  _converterReal(String quantiaEmReais) {
    var reais = double.parse(quantiaEmReais);
    dolarController.text = (reais / widget.moedas[0].buy).toStringAsFixed(2);
    euroController.text = (reais / widget.moedas[1].buy).toStringAsFixed(2);
    bitCoinController.text = (reais / widget.moedas[2].buy).toStringAsFixed(2);
  }

  _converterDolar(String quantiaEmDolares) {
    var dolares = double.parse(quantiaEmDolares) * widget.moedas[0].buy;
    realController.text = (dolares).toStringAsFixed(2);
    euroController.text = (dolares / widget.moedas[1].buy).toStringAsFixed(2);
    bitCoinController.text = (dolares / widget.moedas[2].buy).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 16,
            width: double.infinity,
          ),
          Icon(FontAwesomeIcons.searchDollar, color: Colors.amber, size: 100),
          SizedBox(
            height: 16,
          ),
          TextFieldWidget(
            callBack: (value){
              _converterReal(value);
            },
            icon: FontAwesomeIcons.commentDollar,
            hint: 'Valor em Reais',
            habilitado: true,
            controller: realController,
          ),
          TextFieldWidget(
            callBack: (value){
              _converterDolar(value);
            },
            habilitado: true,
            icon: FontAwesomeIcons.dollarSign,
            hint: 'Valor em Dolar',
            controller: dolarController,
          ),
          TextFieldWidget(
            icon: FontAwesomeIcons.euroSign,
            hint: 'Valor em Euro',
            controller: euroController,
          ),
          TextFieldWidget(
            icon: FontAwesomeIcons.bitcoin,
            hint: 'Valor em BitCoin',
            controller: bitCoinController,
          ),
        ],
      ),
    );
  }
}
