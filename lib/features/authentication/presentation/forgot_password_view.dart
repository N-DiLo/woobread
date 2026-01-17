import 'package:woobread/main_export.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() {
    return _ForgotPasswordViewState();
  }
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final emailcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        showBackButton: true,
        title: 'Forgot Password',
      ),

      body: Padding(
        padding: 16.pa,
        child: ListView(
          children: [
            TextWidget(
              text: 'Enter your email',
              fontSize: 22,
              fontWeight: FontWeight.w700,
              textColor: AppColors.whiteColor,
            ),
            16.fhs,
            TextWidget(
              text: 'We\'ll send you a link to reset your password.',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              textColor: AppColors.whiteColor,
            ),
            24.fhs,
            AppTextfield(
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: (email) => Validators.isValidEmail(email),
              controller: emailcontroller,
            ),
            508.fhs,
            AppButton(
              onTap: () {},
              text: 'Send Reset Link',
              enabled: true,
              borderRadius: BorderRadius.circular(12.r),
            ),

            8.fhs,
          ],
        ),
      ),
    );
  }
}
