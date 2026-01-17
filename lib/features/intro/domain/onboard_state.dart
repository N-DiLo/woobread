import 'package:woobread/main_export.dart';

class OnboardState {
  final List<OnboardModel> items;
  final int currentIndex;

  const OnboardState({this.items = const [], this.currentIndex = 0});

  OnboardState copyWith({List<OnboardModel>? items, int? currentIndex}) {
    return OnboardState(
      items: items ?? this.items,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}

class OnboardNotifier extends Notifier<OnboardState> {
  @override
  OnboardState build() {
    return OnboardState(items: OnboardModel.onboardItems);
  }

  void setIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  void next() {
    if (state.currentIndex < state.items.length - 1) {
      state = state.copyWith(currentIndex: state.currentIndex + 1);
    }
  }

  void previous() {
    if (state.currentIndex > 0) {
      state = state.copyWith(currentIndex: state.currentIndex - 1);
    }
  }
}

final onboardProvider = NotifierProvider<OnboardNotifier, OnboardState>(
  OnboardNotifier.new,
);
