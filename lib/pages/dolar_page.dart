import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 32,
        ),
        Icon(
          FontAwesomeIcons.dollarSign,
          size: 200,
          color: Colors.blueAccent,
        ),
        Text('${widget.moeda.name}'),
        Text('${widget.moeda.buy}'),
        SizedBox(
          width: double.infinity,
        ),
      ],
    );
  }
}
