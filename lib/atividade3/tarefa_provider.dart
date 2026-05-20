import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class TarefaProvider extends ChangeNotifier {
  final _box = Hive.box('tarefas');
  late List<String> _tarefas;

  TarefaProvider() {
    _tarefas = List<String>.from(_box.get('lista', defaultValue: <String>[]) as List);
  }

  List<String> get tarefas => List.unmodifiable(_tarefas);

  void adicionarTarefa(String tarefa) {
    if (tarefa.trim().isEmpty) return;
    _tarefas.add(tarefa.trim());
    _box.put('lista', _tarefas);
    notifyListeners();
  }

  void removerTarefa(int index) {
    _tarefas.removeAt(index);
    _box.put('lista', _tarefas);
    notifyListeners();
  }
}
