import 'package:woobread/main_export.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() {
    return _SplashViewState();
  }
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToSignUp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: 'Woobread',
              fontSize: 40,
              fontWeight: FontWeight.w700,
              textColor: AppColors.whiteColor,
            ),
            TextWidget(
              text: 'redefining the journey...',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              textColor: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _navigateToSignUp() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      navService.pushReplacementNamed(RouteService.onboard);
    }
  }
}
