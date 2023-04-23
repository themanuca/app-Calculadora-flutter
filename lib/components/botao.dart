import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String text;
  final void Function(String)cb;
  Botao({
    required this.cb,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.center,
              backgroundColor: Colors.white,
              primary: Colors.black,
            ),
            onPressed: ()=> cb(text),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15, 
                fontWeight: 
                FontWeight.w500
                ),
              ),
            )
          );
  }
}
