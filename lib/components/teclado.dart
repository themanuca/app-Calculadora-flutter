import 'package:app_calculadora_layout/components/botao.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'botao.dart';
import 'botaoRow.dart';

class Teclado extends StatelessWidget {
  final void Function(String) cb;

  Teclado(this.cb);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      child: Column(
        children: [
          BotaoLinha([
            Botao(text: '%', cb: cb,),
            Botao(text: 'CE', cb: cb,),
            Botao(text: 'X', cb: cb,),
          ]),
          SizedBox(height: 1,),
          BotaoLinha([
            Botao(text: '7', cb: cb,),
            Botao(text: '8', cb: cb,),
            Botao(text: '9', cb: cb,),
            Botao(text: '/', cb: cb,),
          ]),
          SizedBox(height: 1,),
          BotaoLinha([
            Botao(text: '4', cb: cb,),
            Botao(text: '5', cb: cb,),
            Botao(text: '6', cb: cb,),
            Botao(text: '-', cb: cb,),
          ]),
          SizedBox(height: 1,),
          BotaoLinha([
            Botao(text: '1', cb: cb,),
            Botao(text: '2', cb: cb,),
            Botao(text: '3', cb: cb,),
            Botao(text: '+', cb: cb,),
          ]),
          SizedBox(height: 1,),
          BotaoLinha([Botao(text: '0', cb: cb,), Botao(text: '.', cb: cb,), Botao(text: '=', cb: cb,)]),
        ],
      ),
    );
  }
}
