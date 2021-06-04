import 'package:ddm2_dindin_app/pages/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({Key key}) : super(key: key);

  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {

  TextEditingController realController = TextEditingController();
  TextEditingController dolarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 32,
            width: double.infinity,
          ),
          Icon(FontAwesomeIcons.searchDollar,
              color: Colors.amber, size: 150),
          SizedBox(
            height: 16,
          ),
          TextFieldWidget(icon: FontAwesomeIcons.commentDollar, hint: 'Valor em Reais', habilitado: true, controller: realController,),
          TextFieldWidget(icon: FontAwesomeIcons.dollarSign, hint: 'Valor em Dolar', controller: dolarController,),
          TextFieldWidget(icon: FontAwesomeIcons.euroSign, hint: 'Valor em Euro',),
          TextFieldWidget(icon: FontAwesomeIcons.bitcoin, hint: 'Valor em BitCoin',),
          OutlinedButton(onPressed: (){
            var textoRealController = realController.text;
            dolarController.text = '$textoRealController';
          }, child: Text('CONVERTER MOEDA'),),
        ],
      ),
    );
  }
}
