import 'package:woobread/main_export.dart';

class OnboardItems extends ConsumerWidget {
  const OnboardItems({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardProvider);
    final model = state.items[state.currentIndex];

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageWidget(
          url: model.image,
          w: double.infinity,
          h: 320.fh,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: ps(h: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              20.fhs,
              TextWidget(
                text: model.title,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                textColor: AppColors.whiteColor,
              ),
              16.fhs,
              if (model.subTitle.isNotEmpty)
                TextWidget(
                  textAlign: TextAlign.center,
                  text: model.subTitle,
                  softWrap: true,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.whiteColor,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
