import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:ddm2_dindin_app/pages/shared/widgets/exibicao_moeda_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BitCoinPage extends StatefulWidget {
  const BitCoinPage({this.moeda});

  final Moeda moeda;

  @override
  _BitCoinPageState createState() => _BitCoinPageState();
}

class _BitCoinPageState extends State<BitCoinPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 32,
        ),
        Icon(
          FontAwesomeIcons.btc,
          size: 200,
          color: Colors.amberAccent.shade200,
        ),
        SizedBox(
          height: 32,
        ),
        ExibicaoMoedaWigted(widget.moeda),
        SizedBox(
          width: double.infinity,
        ),
      ],
    );
  }
}
