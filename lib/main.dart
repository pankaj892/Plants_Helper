import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'gardening.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MaterialApp(
    color: Colors.green,
    home: Gardening(),
  ));
}
