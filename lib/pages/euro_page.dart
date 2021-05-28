import 'package:ddm2_dindin_app/model/moeda.dart';
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
          color: Colors.green,
        ),
        SizedBox(
          height: 32,
        ),
        RichText(
          text: TextSpan(
            text: 'US\$',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - ${widget.moeda.name}',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Venda - ',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - R\$ ${widget.moeda.sell}',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Compra',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - R\$ ${widget.moeda.buy}',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Variação',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - R\$ ${widget.moeda.variation}',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
