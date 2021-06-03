import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({this.icon, this.hint, this.callBack});

  final IconData icon;
  final String hint;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        onChanged: callBack,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: Colors.white60,
          labelText: hint,
          labelStyle: TextStyle(color: Colors.amberAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amberAccent),
            borderRadius: BorderRadius.circular(32),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
