import 'package:flutter/foundation.dart';
import 'package:woobread/main_export.dart';

enum ButtonType { primary, secondary }

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.onTap,
    this.color,
    this.width,
    this.height,
    this.borderRadius,
    this.enabled = false,
    this.type = ButtonType.primary,
    this.enabledListenable,
    required this.text,
    this.fontSize,
    this.fontWeight,
  });

  final VoidCallback onTap;
  final Color? color;
  final double? width;
  final double? height;
  final ButtonType type;
  final bool enabled;
  final BorderRadiusGeometry? borderRadius;
  final ValueListenable<bool>? enabledListenable;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String text;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  late bool _isEnabled;

  @override
  void initState() {
    super.initState();
    _isEnabled = widget.enabled;
    widget.enabledListenable?.addListener(_buttonEnabled);
  }

  @override
  void didUpdateWidget(covariant AppButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.enabledListenable != widget.enabledListenable) {
      oldWidget.enabledListenable?.removeListener(_buttonEnabled);
      widget.enabledListenable?.addListener(_buttonEnabled);
    }
  }

  void _buttonEnabled() {
    final newValue = widget.enabledListenable?.value ?? widget.enabled;
    if (newValue != _isEnabled) {
      setState(() => _isEnabled = newValue);
    }
  }

  Color _buttonColor(bool isDisabled) {
    if (widget.type == ButtonType.primary) {
      return isDisabled
          ? AppColors.primaryColor.withValues(alpha: .5)
          : (widget.color ?? AppColors.primaryColor);
    }

    return isDisabled
        ? AppColors.secondaryColor.withValues(alpha: .5)
        : (widget.color ?? AppColors.secondaryColor);
  }

  Color _getTextColor(bool isDisabled) {
    if (widget.type == ButtonType.secondary) {
      return isDisabled ? Colors.grey : AppColors.whiteColor;
    }
    return AppColors.darkColor;
  }

  @override
  void dispose() {
    widget.enabledListenable?.removeListener(_buttonEnabled);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDisabled = !widget.enabled;
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: Duration(milliseconds: 300),
        width: widget.width ?? double.infinity,
        height: widget.height ?? 48.fh,
        padding: 10.pa,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(24.r),
          color: widget.color ?? _buttonColor(isDisabled),
        ),
        child: TextWidget(
          text: widget.text,
          textColor: _getTextColor(isDisabled),
          fontSize: widget.fontSize ?? 16,
          fontWeight: widget.fontWeight ?? FontWeight.w700,
        ),
      ),
    );
  }
}
