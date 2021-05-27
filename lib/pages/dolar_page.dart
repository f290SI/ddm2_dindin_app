import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:flutter/material.dart';

class DolarPage extends StatefulWidget {
  const DolarPage({this.moeda});

  final Moeda moeda;

  @override
  _DolarPageState createState() => _DolarPageState();
}

class _DolarPageState extends State<DolarPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Dolar'),
        Text('${widget.moeda.name}'),
        Text('${widget.moeda.buy}'),
      ],
    );
  }
}
