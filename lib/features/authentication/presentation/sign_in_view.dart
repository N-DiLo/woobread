import 'package:woobread/main_export.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() {
    return _SignInViewState();
  }
}

class _SignInViewState extends State<SignInView> {
  final emailcontroller = TextEditingController();
  final pswdcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    pswdcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        showBackButton: true,
        title: 'Login',
      ),

      body: Padding(
        padding: 16.pa,
        child: ListView(
          children: [
            AppTextfield(
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: (email) => Validators.isValidEmail(email),
              controller: emailcontroller,
            ),
            AppTextfield(
              hintText: 'Password',
              controller: pswdcontroller,
              validator: (pswd) => Validators.isValidPassword(pswd),
              keyboardType: TextInputType.visiblePassword,
            ),

            Center(
              child: GestureDetector(
                onTap: () => navService.pushNamed(RouteService.forgotPswd),
                child: TextWidget(
                  text: 'Forgot password?',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.purpleColor,
                ),
              ),
            ),
            16.fhs,
            AppButton(
              onTap: () {},
              text: 'Login',
              enabled: true,
              borderRadius: BorderRadius.circular(12.r),
            ),
            16.fhs,
            Center(
              child: TextWidget(
                text: 'Or login with',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textColor: AppColors.hintTextColor,
              ),
            ),
            24.fhs,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppButton(
                  width: 173.fw,
                  onTap: () {},
                  text: 'Continue with Facebook',
                  type: ButtonType.secondary,
                  enabled: true,
                  fontSize: 14,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                12.fws,
                AppButton(
                  width: 173.fw,
                  onTap: () {},
                  text: 'Continue with Google',
                  type: ButtonType.secondary,
                  enabled: true,
                  fontSize: 14,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ],
            ),
            361.fhs,
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    fontSize: 14.ts,
                    fontWeight: FontWeight.w400,
                    color: AppColors.hintTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          navService.pushNamed(RouteService.signUp);
                        },
                      style: TextStyle(
                        fontSize: 14.ts,
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            8.fhs,
          ],
        ),
      ),
    );
  }
}
