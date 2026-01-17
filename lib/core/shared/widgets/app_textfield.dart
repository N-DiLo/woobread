import 'package:woobread/main_export.dart';

class AppTextfield extends StatefulWidget {
  const AppTextfield({
    super.key,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.showCursor,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.cursorColor,
    this.maxLines = 1,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.autocorrect = true,
    this.obscuringCharacter = '•',
    this.textCapitalization = TextCapitalization.none,
    this.hintText,
    this.labelText,
    this.fillColor,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final Color? fillColor;
  final bool autofocus;
  final bool readOnly;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final int? maxLines;
  final int? maxLength;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Color? cursorColor;
  final String? hintText;
  final String? labelText;

  @override
  State<AppTextfield> createState() {
    return _AppTextfieldState();
  }
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: po(b: 24.r),
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Manrope',
          fontSize: 16.ts,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w400,
        ),
        autocorrect: widget.autocorrect,
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        maxLines: widget.maxLines,
        maxLength: widget.maxLength,
        textAlign: widget.textAlign,
        textCapitalization: widget.textCapitalization,
        onFieldSubmitted: widget.onFieldSubmitted,
        inputFormatters: widget.inputFormatters,
        validator: widget.validator,
        onEditingComplete: widget.onEditingComplete,
        cursorColor: widget.cursorColor ?? AppColors.whiteColor,
        keyboardType: widget.keyboardType,
        obscuringCharacter: widget.obscuringCharacter,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        showCursor: widget.showCursor,
        controller: widget.controller,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        autofocus: widget.autofocus,
        onSaved: widget.onSaved,
        decoration: InputDecoration(
          filled: true,
          hintStyle: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 16.ts,
            fontWeight: FontWeight.w400,
            color: AppColors.hintTextColor,
          ),
          fillColor: widget.fillColor ?? AppColors.textfieldColor,
          hintText: widget.hintText,
          contentPadding: 16.pa,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.r),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
    );
  }
}
