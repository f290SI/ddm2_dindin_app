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

  _converterModedas() {
    var number = NumberFormat("###.0#", "pt_BR");
    var reais = double.parse(realController.text);
    dolarController.text =
        number.format(reais / widget.moedas[0].buy).toString();
    euroController.text =
        number.format(reais / widget.moedas[1].buy).toString();
    bitCoinController.text =
        number.format(reais / widget.moedas[2].buy).toString();
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
            icon: FontAwesomeIcons.commentDollar,
            hint: 'Valor em Reais',
            habilitado: true,
            controller: realController,
          ),
          TextFieldWidget(
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: FloatingActionButton.extended(
              backgroundColor: Colors.amberAccent,
              onPressed: _converterModedas,
              label: Text('CONVERTER'),
            ),
          )
        ],
      ),
    );
  }
}
