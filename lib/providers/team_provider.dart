import 'package:flutter_riverpod/flutter_riverpod.dart';

class TeamStateProvider extends StateNotifier<List<Map<String, String>>> {
  final _originalList = [
    {"name": "Mert Günok", "team": "Beşiktaş"},
    {"name": "Uğurcan Çakır", "team": "Trabzonspor"},
    {"name": "Altay Bayındır", "team": "Manchester United"},
    {"name": "Zeki Çelik", "team": "AS Roma"},
    {"name": "Merih Demiral", "team": "Al-Ahli SFC"},
    {"name": "Çağlar Söyüncü", "team": "Atlético Madrid"},
    {"name": "Ozan Kabak", "team": "TSG 1899 Hoffenheim"},
    {"name": "Abdülkerim Bardakcı", "team": "Galatasaray"},
    {"name": "Kaan Ayhan", "team": "Galatasaray"},
    {"name": "Kerem Aktürkoğlu", "team": "Galatasaray"},
    {"name": "Barış Alper Yılmaz", "team": "Galatasaray"},
    {"name": "Orkun Kökçü", "team": "Benfica"},
    {"name": "Hakan Çalhanoğlu", "team": "Inter Milan"},
    {"name": "Yusuf Yazıcı", "team": "Trabzonspor"},
    {"name": "Cengiz Ünder", "team": "Fenerbahçe"},
    {"name": "Enes Ünal", "team": "Bournemouth"},
  ];
  TeamStateProvider() : super([]) {
    state = _originalList;
  }

  void filteredPlayer(String name) {
    if (name.isEmpty) {
      state = _originalList;
    } else {
      state =
          _originalList
              .where(
                (element) => element["name"].toString().toLowerCase().contains(
                  name.toLowerCase(),
                ),
              )
              .toList();
    }
  }
}

final teamStateProvider = StateNotifierProvider.autoDispose<
  TeamStateProvider,
  List<Map<String, String>>
>((ref) => TeamStateProvider());
