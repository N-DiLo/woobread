import 'package:woobread/main_export.dart';

class CarouselIntroView extends StatelessWidget {
  const CarouselIntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 844.fh,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageWidget(
              url: AppImages.img.png,
              w: double.infinity,
              h: 320.fh,
              fit: BoxFit.fill,
            ),
            20.fhs,
            DotIndicator(
              count: 4,
              currentIndex: 0,
              activeColor: AppColors.whiteColor,
              inactiveColor: AppColors.inactiveDotColor,
            ),
            40.fhs,
            TextWidget(
              text: 'Comfort fiction for every mood',
              softWrap: true,
              fontSize: 22,
              textColor: AppColors.whiteColor,
              fontWeight: FontWeight.w700,
            ),
            16.fhs,
            TextWidget(
              textAlign: TextAlign.center,
              softWrap: true,
              text:
                  'Woobread is your cozy corner for comfort fiction, affirmations, credits, community, and pregnancy tips.',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              textColor: AppColors.whiteColor,
            ),
            24.fhs,
            Padding(
              padding: ps(h: 16.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    width: 84.fw,
                    onTap: () {},
                    text: 'Skip',
                    enabled: true,
                    type: ButtonType.secondary,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  AppButton(
                    width: 84.fw,
                    onTap: () => navService.pushNamedAndRemoveUntil(
                      RouteService.getStarted,
                    ),
                    text: 'Next',
                    type: ButtonType.primary,
                    enabled: true,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
