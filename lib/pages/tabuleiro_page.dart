import 'package:flutter/material.dart';

enum JogadasDisponiveis { JOGADOR_X, JOGADOR_O, VAZIO }

class TabuleiroPage extends StatefulWidget {
  const TabuleiroPage({super.key});

  @override
  State<TabuleiroPage> createState() => _TabuleiroPageState();
}

class _TabuleiroPageState extends State<TabuleiroPage> {
  final List<JogadasDisponiveis> _tabuleiro = List.generate(
    9,
    (_) => JogadasDisponiveis.VAZIO,
  );

  JogadasDisponiveis _jogadorVez = JogadasDisponiveis.JOGADOR_X;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          'Jogo da velha - Jogador da vez é o ${_getPositionValue(_jogadorVez)}',
        ),
      ),
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildItem(0), _buildItem(1), _buildItem(2)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildItem(3), _buildItem(4), _buildItem(5)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildItem(6), _buildItem(7), _buildItem(8)],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.white,
          child: Center(
            child: Text(
              _getPositionValue(_tabuleiro[index]),
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            _tabuleiro[index] = _jogadorVez;
            _jogadorVez =
                _jogadorVez == JogadasDisponiveis.JOGADOR_X
                    ? JogadasDisponiveis.JOGADOR_O
                    : JogadasDisponiveis.JOGADOR_X;
          });
        },
      ),
    );
  }

  String _getPositionValue(JogadasDisponiveis jogada) {
    if (jogada == JogadasDisponiveis.JOGADOR_O) {
      return 'O';
    }
    if (jogada == JogadasDisponiveis.JOGADOR_X) {
      return 'X';
    }

    return '';
  }
}
