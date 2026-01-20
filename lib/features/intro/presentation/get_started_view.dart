import 'package:woobread/main_export.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', showBackButton: false),
      body: Padding(
        padding: ps(h: 16.r),
        child: Column(
          children: [
            Center(
              child: TextWidget(
                text: 'Find your comfort',
                textColor: AppColors.whiteColor,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            16.fhs,
            TextWidget(
              textAlign: TextAlign.center,
              softWrap: true,
              text:
                  'A place for comfort fiction, affirmations, credits, and community',
              textColor: AppColors.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            24.fhs,
            AppButton(
              text: 'Create Account',
              enabled: true,
              type: ButtonType.primary,
              borderRadius: BorderRadius.circular(12.r),
              onTap: () => navService.pushNamed(RouteService.signUp),
            ),
            12.fhs,
            AppButton(
              text: 'Login',
              enabled: true,
              type: ButtonType.secondary,
              borderRadius: BorderRadius.circular(12.r),
              onTap: () => navService.pushNamed(RouteService.signIn),
            ),
            460.fhs,
            TextWidget(
              textAlign: TextAlign.center,
              softWrap: true,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textColor: AppColors.hintTextColor,
              text:
                  'By continuing, you agree to our Terms of Service and Privacy Policy',
            ),
          ],
        ),
      ),
    );
  }
}
