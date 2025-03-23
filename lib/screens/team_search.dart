import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/providers/team_provider.dart';

class TeamSearhPage extends ConsumerWidget {
  const TeamSearhPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamList = ref.watch(teamStateProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Player Search")),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              onChanged: (value) {
                ref.read(teamStateProvider.notifier).filteredPlayer(value);
              },
              decoration: InputDecoration(hintText: "Search player"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: teamList.length,
              itemBuilder: (context, index) {
                final player = teamList[index];
                return ListTile(
                  title: Text(player["name"].toString()),
                  subtitle: Text(player["team"].toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
