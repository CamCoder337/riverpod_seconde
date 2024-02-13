import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_seconde/riverpod_data.dart';


class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: (){
                  // ref.read(riverpodIsLight.notifier).update((state) => true);
                  ref.read(riverpodHard).changeTheme(newBool: true);
                },
                label: const Text('Light Mode'),
                icon: const Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
              onPressed: (){
                // ref.read(riverpodIsLight.notifier).update((state) => false);
                ref.read(riverpodHard).changeTheme(newBool: false);
              },
              label: const Text('Dark Mode'),
              icon: const Icon(Icons.dark_mode),
            )
          ],
        ),
      ),
    );
  }
}
