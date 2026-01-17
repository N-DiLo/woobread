import 'main_export.dart';

void main() async {
  await woobreadSetup();
  runApp(const ProviderScope(child: WoobReadApp()));
}
