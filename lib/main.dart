import 'package:flutter/material.dart';
import '../funcoes.dart';
import '../appBar.dart';
import '../background.dart';
import '../corpo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlackJack',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBarWidget(),
        ),
        body: JogoBlackjack(),
      ),
    );
  }
}

class JogoBlackjack extends StatefulWidget {
  @override
  JogoBlackjackState createState() => JogoBlackjackState();
}

class JogoBlackjackState extends State<JogoBlackjack> {
  @override
  void initState() {
    super.initState();
    iniciarJogo();
  }

  void reset() {
    setState(() {
      partida = true;
      maoJogador.clear();
      maoAdversario.clear();
      iniciarJogo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundWidget(),
        CorpoWidget(),
      ],
    );
  }
}
