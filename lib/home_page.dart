import 'package:flutter/material.dart';
import 'atividade1/color_toggle_page.dart';
import 'atividade2/counter_page.dart';
import 'atividade3/tarefas_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atividades - Aula 7')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ColorTogglePage()),
              ),
              child: const Text('Atividade 1 - Hive: Alternar Cor'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CounterPage()),
              ),
              child: const Text('Atividade 2 - Provider: Contador'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TarefasPage()),
              ),
              child: const Text('Atividade 3 - Provider + Hive: Tarefas'),
            ),
          ],
        ),
      ),
    );
  }
}
