import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contador.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atividade 2 - Contador')),
      body: Center(
        child: Consumer<Contador>(
          builder: (context, contador, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${contador.valor}',
                  style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: contador.incrementar,
                      child: const Text('Incrementar'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: contador.decrementar,
                      child: const Text('Decrementar'),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
