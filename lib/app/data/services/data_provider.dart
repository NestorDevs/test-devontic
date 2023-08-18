import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/models/entrie.dart';

class DataProvider extends ChangeNotifier {
  List<Entry> _entries = [];

  Future<void> fetchData() async {
    final jsonString = await rootBundle.loadString('assets/json/movies.json');
    final jsonData = jsonDecode(jsonString);

    //* Leemos los datos y filtrar los resultados
    _entries = (jsonData['entries'] as List)
        .map((entryData) => Entry.fromJson(entryData))
        .where((entry) => entry.releaseYear >= 2010)
        .toList();

    //* Ordenamos los resultados por título ascendentemente
    _entries.sort((a, b) => a.title.compareTo(b.title));

    notifyListeners();
  }

//* Cambiamos el tipo si es movie o serie
  List<Entry> getEntriesByProgramType(String programType) {
    return _entries.where((entry) => entry.programType == programType).toList();
  }
}
