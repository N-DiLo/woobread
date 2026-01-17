import 'package:woobread/main_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.showBackButton = true,
    this.onBackPressed,
    this.backgroundColor,
    this.elevation = 0,
    this.titleFontSize,
    this.titleColor,
    this.titleFontWeight,
    this.leading,
    this.actions,
    this.backButtonWidget,
    this.backButtonPadding,
  });

  final String title;
  final bool centerTitle;
  final bool showBackButton;
  final VoidCallback? onBackPressed;
  final Color? backgroundColor;
  final double elevation;
  final double? titleFontSize;
  final Color? titleColor;
  final FontWeight? titleFontWeight;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? backButtonWidget;
  final EdgeInsetsGeometry? backButtonPadding;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.transparent,
      title: TextWidget(
        text: title,
        fontSize: titleFontSize ?? 18,
        textColor: titleColor,
        fontWeight: titleFontWeight ?? FontWeight.w700,
      ),
      centerTitle: centerTitle,
      leading:
          leading ??
          (showBackButton
              ? SizedBox(
                  width: 30.fw,
                  child: Row(
                    children: [
                      Padding(
                        padding: backButtonPadding ?? po(l: 12.r),
                        child: GestureDetector(
                          onTap: onBackPressed ?? () => navService.pop(),
                          child:
                              backButtonWidget ??
                              Icon(
                                Icons.arrow_back_rounded,
                                color: AppColors.whiteColor,
                                size: 30.r,
                              ),
                        ),
                      ),
                    ],
                  ),
                )
              : null),
      actions: actions,
      backgroundColor: backgroundColor ?? AppColors.backgroundColor,
      elevation: elevation,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
