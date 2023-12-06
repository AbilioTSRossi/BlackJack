import 'package:flutter/material.dart';

List<Carta> maoJogador = [];
List<Carta> maoAdversario = [];
List<Carta> baralho = criarBaralho();
bool partida = true;

class Carta {
  final int valor;
  final String simbolo;
  final String imagem;
  final String fundo;

  Carta(
      {required this.valor,
      required this.simbolo,
      required this.imagem,
      required this.fundo});
}

List<Carta> criarBaralho() {
  List<Carta> cartas = [
    Carta(
        valor: 2,
        simbolo: '2c',
        imagem: '../assets/2C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 2,
        simbolo: '2d',
        imagem: '../assets/2D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 2,
        simbolo: '2h',
        imagem: '../assets/2H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 2,
        simbolo: '2s',
        imagem: '../assets/2S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 3,
        simbolo: '3c',
        imagem: '../assets/3C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 3,
        simbolo: '3d',
        imagem: '../assets/3D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 3,
        simbolo: '3h',
        imagem: '../assets/3H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 3,
        simbolo: '3s',
        imagem: '../assets/3S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 4,
        simbolo: '4c',
        imagem: '../assets/4C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 4,
        simbolo: '4d',
        imagem: '../assets/4D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 4,
        simbolo: '4h',
        imagem: '../assets/4H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 4,
        simbolo: '4s',
        imagem: '../assets/4S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 5,
        simbolo: '5c',
        imagem: '../assets/5C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 5,
        simbolo: '5d',
        imagem: '../assets/5D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 5,
        simbolo: '5h',
        imagem: '../assets/5H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 5,
        simbolo: '5s',
        imagem: '../assets/5S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 6,
        simbolo: '6c',
        imagem: '../assets/6C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 6,
        simbolo: '6d',
        imagem: '../assets/6D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 6,
        simbolo: '6h',
        imagem: '../assets/6H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 6,
        simbolo: '6s',
        imagem: '../assets/6S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 7,
        simbolo: '7c',
        imagem: '../assets/7C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 7,
        simbolo: '7d',
        imagem: '../assets/7D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 7,
        simbolo: '7h',
        imagem: '../assets/7H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 7,
        simbolo: '7s',
        imagem: '../assets/7S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 8,
        simbolo: '8c',
        imagem: '../assets/8C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 8,
        simbolo: '8d',
        imagem: '../assets/8D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 8,
        simbolo: '8h',
        imagem: '../assets/8H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 8,
        simbolo: '8s',
        imagem: '../assets/8S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 9,
        simbolo: '9c',
        imagem: '../assets/9C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 9,
        simbolo: '9d',
        imagem: '../assets/9D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 9,
        simbolo: '9h',
        imagem: '../assets/9H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 9,
        simbolo: '9s',
        imagem: '../assets/9S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: '10c',
        imagem: '../assets/10C.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: '10d',
        imagem: '../assets/10D.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: '10h',
        imagem: '../assets/10H.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: '10s',
        imagem: '../assets/10S.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 11,
        simbolo: 'Ac',
        imagem: '../assets/AC.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 11,
        simbolo: 'Ad',
        imagem: '../assets/AD.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 11,
        simbolo: 'Ah',
        imagem: '../assets/AH.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 11,
        simbolo: 'As',
        imagem: '../assets/AS.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Jc',
        imagem: '../assets/JC.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Jd',
        imagem: '../assets/JD.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Jh',
        imagem: '../assets/JH.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Js',
        imagem: '../assets/JS.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Kc',
        imagem: '../assets/KC.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Kd',
        imagem: '../assets/KD.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Kh',
        imagem: '../assets/KH.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Ks',
        imagem: '../assets/KS.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Qc',
        imagem: '../assets/QC.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Qd',
        imagem: '../assets/QD.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Qh',
        imagem: '../assets/QH.png',
        fundo: '../assets/red_back.png'),
    Carta(
        valor: 10,
        simbolo: 'Qs',
        imagem: '../assets/QS.png',
        fundo: '../assets/red_back.png'),
  ];
  cartas.shuffle();
  return cartas;
}

void iniciarJogo() {
  baralho = criarBaralho();
  maoJogador = [comprarCarta(), comprarCarta()];
  maoAdversario = [comprarCarta(), comprarCarta()];
}

Carta comprarCarta() {
  return baralho.removeAt(0);
}

int calcularPontuacao(List<Carta> mao) {
  int pontuacao = 0;

  for (var carta in mao) {
    pontuacao += carta.valor;
  }
  return pontuacao;
}

void jogadaAdversaria() {
  int soma = calcularPontuacao(maoAdversario);
  if (soma < 17) {
    maoAdversario.add(comprarCarta());
  }
}

void mostrarResultado(
    BuildContext context, String mensagem, Function resetFunction) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Resultado',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue, // ou a cor desejada
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              mensagem,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Pontos Adversario: ${calcularPontuacao(maoAdversario)}',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              resetFunction();
            },
            child: Text(
              'Novo Jogo',
              style: TextStyle(
                fontSize: 18,
                color: Colors.green, // ou a cor desejada
              ),
            ),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      );
    },
  );
}

String verificarVencedor() {
  String mensagem = '';
  if (calcularPontuacao(maoAdversario) > 21 &&
      calcularPontuacao(maoJogador) > 21) {
    mensagem = 'Empate, as 2 mãos estouraram';
  } else if (calcularPontuacao(maoAdversario) > 21) {
    mensagem = 'Jogador Venceu, mão adversaria estorou';
  } else if (calcularPontuacao(maoJogador) > 21) {
    mensagem = 'Jogador Perdeu, mão do jogador estorou';
  } else if (calcularPontuacao(maoAdversario) > calcularPontuacao(maoJogador)) {
    mensagem = 'Jogador Perdeu, adversario fez mais pontos';
  } else if (calcularPontuacao(maoJogador) > calcularPontuacao(maoAdversario)) {
    mensagem = 'Jogador Venceu, jogador fez mais pontos';
  } else {
    mensagem = 'Empate, pontos iguais';
  }
  return mensagem;
}

void estourou(BuildContext context, Function resetFunction) {
  if (calcularPontuacao(maoAdversario) > 21 ||
      calcularPontuacao(maoJogador) > 21) {
    partida = false;
    mostrarResultado(context, verificarVencedor(), resetFunction);
  }
}

Row mostrarMao(mao) {
  return Row(
    children: [
      for (var carta in mao) Image.asset(carta.imagem, height: 100),
    ],
  );
}

Row mostrarFundo(mao) {
  return Row(
    children: [
      for (var carta in mao) Image.asset(carta.fundo, height: 100),
    ],
  );
}

ButtonStyle estiloBotao(cor) {
  return ElevatedButton.styleFrom(
    primary: cor,
    onPrimary: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}

void segredo(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Professora me passa de ano!!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black, // ou a cor desejada
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Você passou',
              style: TextStyle(
                fontSize: 18,
                color: Colors.green, // ou a cor desejada
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              segredo2(context);
            },
            child: Text(
              'Você reprovou',
              style: TextStyle(
                fontSize: 18,
                color: Colors.red, // ou a cor desejada
              ),
            ),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      );
    },
  );
}

void segredo2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Opção invalida',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red, // ou a cor desejada
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              segredo(context);
            },
            child: Text(
              'Tentar novamente',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black, // ou a cor desejada
              ),
            ),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      );
    },
  );
}
