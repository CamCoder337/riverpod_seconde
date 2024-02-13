import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_seconde/appModel.dart';

final riverpodIsLight = StateProvider<bool>((ref) => false);


final riverpodHard = ChangeNotifierProvider<RiverpodModel>((ref) => RiverpodModel(isLight: true));