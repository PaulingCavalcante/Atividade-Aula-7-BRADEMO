import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ColorTogglePage extends StatefulWidget {
  const ColorTogglePage({super.key});

  @override
  State<ColorTogglePage> createState() => _ColorTogglePageState();
}

class _ColorTogglePageState extends State<ColorTogglePage> {
  final _box = Hive.box('settings');

  bool get _isRelax => _box.get('is_relax', defaultValue: true) as bool;

  void _toggle() {
    _box.put('is_relax', !_isRelax);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isRelax = _isRelax;
    return Scaffold(
      backgroundColor: isRelax ? Colors.blue : Colors.green,
      appBar: AppBar(title: const Text('Atividade 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isRelax ? 'Modo Relax' : 'Modo Focado',
              style: const TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _toggle,
              child: const Text('Alternar Modo'),
            ),
          ],
        ),
      ),
    );
  }
}
