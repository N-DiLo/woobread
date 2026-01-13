import 'package:flutter/foundation.dart';
import 'package:woobread/core/core.dart';

class WoobReadApp extends StatelessWidget {
  const WoobReadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
    );
  }
}
