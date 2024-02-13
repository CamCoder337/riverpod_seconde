import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_seconde/riverpod_data.dart';


class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});

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
                  ref.read(riverpodIsLight.notifier).update((state) => true);
                },
                label: const Text('Light Mode'),
                icon: const Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
              onPressed: (){
                ref.read(riverpodIsLight.notifier).update((state) => false);
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
