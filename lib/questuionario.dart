import 'package:flutter/material.dart';
import 'package:perguntas/questoes.dart';

import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Questao(texto: perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas
            .map(
              (resp) => Resposta(
                texto: resp['texto'] as String,
                onPressed: () => quandoResponder(
                  int.parse(
                    resp['pontuacao'].toString(),
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
