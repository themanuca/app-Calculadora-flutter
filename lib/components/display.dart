import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String text;

  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    decoration: TextDecoration.none,
                    fontSize: 50,
                    color: Colors.white),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
