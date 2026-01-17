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
            Expanded(
              child: PageView.builder(
                pageSnapping: true,
                controller: _pageCtrl,
                onPageChanged: notifier.setIndex,
                itemCount: state.items.length,
                itemBuilder: (ctx, i) => OnboardItems(index: i),
              ),
            ),
            Padding(
              padding: po(l: 171.r, r: 211.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      state.items.length,
                      (i) => Container(
                        margin: 3.pa,
                        width: state.currentIndex == i ? 12.r : 12.r,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: state.currentIndex == i
                              ? AppColors.primaryColor
                              : AppColors.inactiveDotColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            32.fhs,
            AppButton(
              onTap: () {
                if (state.currentIndex < state.items.length - 1) {
                  _pageCtrl.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  navService.pushReplacementNamed(RouteService.signUp);
                }
              },
              text: 'Next',
              enabled: true,
              borderRadius: BorderRadius.circular(24.r),
            ),
          ],
        ),
      ),
    );
  }
}
