import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:flutter/material.dart';

class ExibicaoMoedaWigted extends StatelessWidget {
  const ExibicaoMoedaWigted(this.moeda);

  final Moeda moeda;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: '\$',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - ${moeda.name}',
                style: TextStyle(color: Colors.amberAccent, fontSize: 18),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Venda ',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - R\$ ${moeda.sell}',
                style: TextStyle(color: Colors.amberAccent, fontSize: 18),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Compra ',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - R\$ ${moeda.buy}',
                style: TextStyle(color: Colors.amberAccent, fontSize: 18),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Variação ',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' - R\$ ${moeda.variation}',
                style: TextStyle(color: Colors.amberAccent, fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
