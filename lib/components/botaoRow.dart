import 'package:app_calculadora_layout/components/botao.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'botao.dart';

class BotaoLinha extends StatelessWidget {
  final List<Botao> botao;

  BotaoLinha(this.botao);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: botao,
        ));
  }
}
