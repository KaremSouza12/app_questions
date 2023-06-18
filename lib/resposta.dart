import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({super.key, required this.texto, required this.onPressed});

  final String texto;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: onPressed,
            child: Text(
              texto,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}

// for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
//       respostas.add(Resposta(textoResp, _responder));
//     }