import 'main_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(const ProviderScope(child: WoobReadApp()));
}
