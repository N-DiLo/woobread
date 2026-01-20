import 'package:woobread/main_export.dart';

class OnboardView extends ConsumerStatefulWidget {
  const OnboardView({super.key});

  @override
  ConsumerState<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends ConsumerState<OnboardView> {
  late PageController _pageCtrl;

  @override
  void initState() {
    super.initState();
    _pageCtrl = PageController();
  }

  @override
  void dispose() {
    _pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardProvider);
    final notifier = ref.read(onboardProvider.notifier);

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 844.fh,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: _getPageHeight(state.currentIndex),
              child: PageView.builder(
                pageSnapping: true,
                controller: _pageCtrl,
                onPageChanged: notifier.setIndex,
                itemCount: state.items.length,
                itemBuilder: (ctx, i) => OnboardItems(index: i),
              ),
            ),
            DotIndicator(
              count: state.items.length,
              currentIndex: state.currentIndex,
            ),
            32.fhs,
            if (state.currentIndex > 0)
              AppButton(
                onTap: _handleNext,
                text: 'Next',
                enabled: true,
                borderRadius: BorderRadius.circular(24.r),
              ),
          ],
        ),
      ),
    );
  }

  void _handleNext() {
    final state = ref.read(onboardProvider);
    if (state.currentIndex < state.items.length - 1) {
      _pageCtrl.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      navService.pushReplacementNamed(RouteService.signUp);
    }
  }

  double _getPageHeight(int index) {
    return switch (index) {
      0 => 43.h,
      1 => 50.h,
      _ => 55.h,
    };
  }
}
