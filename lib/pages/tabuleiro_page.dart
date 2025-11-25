import 'package:flutter/material.dart';

class TabuleiroPage extends StatelessWidget {
  const TabuleiroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text('Jogo da velha')),
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildItem(), _buildItem(), _buildItem()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildItem(), _buildItem(), _buildItem()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildItem(), _buildItem(), _buildItem()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(height: 100, width: 100, color: Colors.white),
    );
  }
}
