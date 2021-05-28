import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:ddm2_dindin_app/pages/shared/widgets/exibicao_moeda_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EuroPage extends StatefulWidget {
  const EuroPage({this.moeda});

  final Moeda moeda;

  @override
  _EuroPageState createState() => _EuroPageState();
}

class _EuroPageState extends State<EuroPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        Icon(
          FontAwesomeIcons.euroSign,
          size: 200,
          color: Colors.amberAccent.shade200,
        ),
        SizedBox(
          height: 32,
        ),
        ExibicaoMoedaWigted(widget.moeda),
      ],
    );
  }
}
