import 'package:woobread/main_export.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() {
    return _SignUpViewState();
  }
}

class _SignUpViewState extends State<SignUpView> {
  final emailcontroller = TextEditingController();
  final pswdcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    pswdcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        leading: Icon(Icons.close_rounded, color: AppColors.whiteColor),
        title: 'Sign Up',
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
            AppButton(
              onTap: () {},
              text: 'Sign Up',
              enabled: true,
              borderRadius: BorderRadius.circular(12.r),
            ),
            16.fhs,
            Center(
              child: TextWidget(
                text: 'Or sign up with',
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
            386.fhs,
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    fontSize: 14.ts,
                    fontWeight: FontWeight.w400,
                    color: AppColors.hintTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          navService.pushNamed(RouteService.signIn);
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
