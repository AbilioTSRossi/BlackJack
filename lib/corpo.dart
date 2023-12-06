import 'package:flutter/material.dart';
import '../funcoes.dart';

class CorpoWidget extends StatefulWidget {
  @override
  _CorpoWidgetState createState() => _CorpoWidgetState();
}

class _CorpoWidgetState extends State<CorpoWidget> {
  @override
  void reset() {
    setState(() {
      partida = true;
      maoJogador.clear();
      maoAdversario.clear();
      iniciarJogo();
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (partida) mostrarFundo(maoAdversario),
            if (!partida) mostrarMao(maoAdversario),
          ],
        ),
        SizedBox(height: 100),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mostrarMao(maoJogador),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      jogadaAdversaria();
                      partida = false;
                      mostrarResultado(context, verificarVencedor(), reset);
                    });
                  },
                  style: estiloBotao(Colors.green),
                  child: Text('Finalizar jogada'),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    if (partida)
                      setState(() {
                        maoJogador.add(comprarCarta());
                        jogadaAdversaria();
                        estourou(context, reset);
                      });
                  },
                  style: estiloBotao(Colors.blue),
                  child: Text('Comprar Carta'),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Mão atual: ${calcularPontuacao(maoJogador)}',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
