import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({this.moeda});

  final Moeda moeda;

  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Query'),
        Icon(FontAwesomeIcons.searchDollar, size: 150,),
        Text('${widget.moeda.name}'),
        Text('${widget.moeda.buy}'),
      ],
    );
  }
}
