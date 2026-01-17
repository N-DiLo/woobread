import 'package:woobread/main_export.dart';

final locator = GetIt.instance;

Future<void> woobreadSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  locator.registerLazySingleton<NavService>(() => NavService());
}

NavService navService = locator.get<NavService>();
