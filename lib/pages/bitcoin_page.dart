import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:flutter/material.dart';

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
      children: [
        Text('Query'),
        Text('${widget.moeda.name}'),
        Text('${widget.moeda.buy}'),
      ],
    );
  }
}
