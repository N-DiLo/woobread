import 'dart:math';
import 'package:woobread/main_export.dart';

Route<T> onGenerateRoute<T>(RouteSettings settings) {
  final route = settings.name ?? RouteService.splash;

  final page = RouteService.getPageForRoute(route);

  // Apply random transition
  return RouteService.randomTransition(page, settings: settings) as Route<T>;
}

class RouteService {
  static const String splash = '/';
  static const String onboard = 'onboard';
  static const String bottomNav = 'bottom-nav';
  static const String signUp = 'sign-up';
  static const String signIn = 'sign-in';
  static const String forgotPswd = 'forgot-pswd';
  static const String carouselIntro = 'carousel-intro';
  static const String getStarted = 'get-started';

  // Random generator
  static final Random _random = Random();

  static Widget getPageForRoute(String route) {
    switch (route) {
      case splash:
        return const SplashView();
      case bottomNav:
        return const BottomNavView();
      case signUp:
        return const SignUpView();
      case signIn:
        return const SignInView();
      case forgotPswd:
        return const ForgotPasswordView();
      case onboard:
        return const OnboardView();
      case carouselIntro:
        return const CarouselIntroView();
      case getStarted:
        return const GetStartedView();
      default:
        return Scaffold(
          body: Center(child: Text('No route defined for $route')),
        );
    }
  }

  // Random transition selector
  static Route randomTransition(
    Widget page, {
    required RouteSettings settings,
  }) {
    final transitions = [
      fadeTransitionRoute,
      slideTransition,
      scaleTransition,
      rotateTransition,
    ];

    final selectedTransition = transitions[_random.nextInt(transitions.length)];
    return selectedTransition(page, settings: settings);
  }

  static Route fadeTransitionRoute(
    Widget page, {
    required RouteSettings settings,
  }) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation.drive(CurveTween(curve: Curves.easeInOut)),
          child: child,
        );
      },
    );
  }

  static Route slideTransition(
    Widget page, {
    required RouteSettings settings,
    Offset? beginOffset,
  }) {
    final offsets = [
      const Offset(1, 0),
      const Offset(-1, 0),
      const Offset(0, 1),
      const Offset(0, -1),
    ];
    final offset = beginOffset ?? offsets[_random.nextInt(offsets.length)];

    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween = Tween(
          begin: offset,
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOutQuart));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  static Route scaleTransition(Widget page, {required RouteSettings settings}) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final scale = Tween<double>(
          begin: 0.9,
          end: 1.0,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut));
        return ScaleTransition(scale: scale, child: child);
      },
    );
  }

  static Route rotateTransition(
    Widget page, {
    required RouteSettings settings,
  }) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final rotate = Tween<double>(
          begin: 0.95,
          end: 1.0,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut));
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(scale: rotate, child: child),
        );
      },
    );
  }
}
