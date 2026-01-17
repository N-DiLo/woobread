import 'package:woobread/main_export.dart';

class OnboardModel {
  final String image;
  final String title;
  final String subTitle;

  const OnboardModel({
    required this.image,
    required this.subTitle,
    required this.title,
  });

  OnboardModel copyWith({String? image, String? title, String? subTitle}) {
    return OnboardModel(
      image: image ?? this.image,
      subTitle: subTitle ?? this.subTitle,
      title: title ?? this.title,
    );
  }

  static List<OnboardModel> onboardItems = [
    OnboardModel(image: AppImages.ob.png, subTitle: '', title: ''),
    OnboardModel(
      image: AppImages.ob1.png,
      subTitle: 'Your companion for a mindful pregnancy journey',
      title: 'Welcome to Woobread',
    ),
    OnboardModel(
      image: AppImages.ob2.png,
      subTitle:
          'Your sanctuary for soft stories, affirmations, and pregnancy tips. Join our community or explore as a guest.',
      title: 'Welcome to Woobread',
    ),
  ];
}
