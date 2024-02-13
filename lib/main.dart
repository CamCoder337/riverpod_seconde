import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_seconde/appModel.dart';
import 'package:riverpod_seconde/hard_page.dart';
import 'package:riverpod_seconde/riverpod_data.dart';

import 'easy_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Brightness _brightness = ref.watch(riverpodIsLight) ? Brightness.light : Brightness.dark;
    Brightness _brightness = ref.watch(riverpodHard).isLight ? Brightness.light : Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: _brightness),
        useMaterial3: true,
      ),
      home: HardPage(),
    );
  }
}
