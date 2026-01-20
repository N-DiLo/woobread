import 'package:woobread/main_export.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.activeColor,
    this.inactiveColor,
    required this.count,
    required this.currentIndex,
  });

  final int count;
  final int currentIndex;
  final Color? activeColor;
  final Color? inactiveColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          count,
          (i) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            alignment: Alignment.center,
            margin: 3.pa,
            width: currentIndex == i ? 12.r : 12.r,
            height: 8.fh,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == i
                  ? activeColor ?? AppColors.primaryColor
                  : inactiveColor ?? AppColors.inactiveDotColor,
            ),
          ),
        ),
      ),
    );
  }
}
