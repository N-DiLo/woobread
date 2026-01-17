class AppImages {
  static const _path = 'assets/images';

  static const backArrowIcon = '$_path/back-arrow-icon';
  static const activeBookIcon = '$_path/books_a';
  static const inactiveBookIcon = '$_path/books_i';
  static const books1 = '$_path/books1';
  static const books2 = '$_path/books2';
  static const books3 = '$_path/books3';
  static const books4 = '$_path/books4';
  static const books5 = '$_path/books5';
  static const brokenImage = '$_path/broken-image.png';
  static const currentRead1 = '$_path/c-read1';
  static const currentRead2 = '$_path/c-read2';
  static const closeIcon = '$_path/close-icon';
  static const activeCommIcon = '$_path/community_a';
  static const inactiveCommIcon = '$_path/community_i';
  static const completed1 = '$_path/completed1';
  static const completed2 = '$_path/completed2';
  static const copyIcon = '$_path/copy-icon';
  static const activeDiscoverIcon = '$_path/discover_a';
  static const inactiveDiscoverIcon = '$_path/discover_i';
  static const editIcon = '$_path/edit-icon';
  static const activeHomeIcon = '$_path/home_a';
  static const inactiveHomeIcon = '$_path/home_i';
  static const homeImg1 = '$_path/home-img1';
  static const homeImg2 = '$_path/home-img2';
  static const homeImg3 = '$_path/home-img3';
  static const homeImg4 = '$_path/home-img4';
  static const homeImg5 = '$_path/home-img5';
  static const homeImg6 = '$_path/home-img6';
  static const homeImg7 = '$_path/home-img7';
  static const homeImg8 = '$_path/home-img8';
  static const homeImg9 = '$_path/home-img9';
  static const homeImg10 = '$_path/home-img10';
  static const homeImg11 = '$_path/home-img11';
  static const homeImg12 = '$_path/home-img12';
  static const homeImg13 = '$_path/home-img13';
  static const homeImg14 = '$_path/home-img14';
  static const homeImg15 = '$_path/home-img15';
  static const homeImg16 = '$_path/home-img16';
  static const homeImg17 = '$_path/home-img17';
  static const homeImg18 = '$_path/home-img18';
  static const homeImg19 = '$_path/home-img19';
  static const homeImg20 = '$_path/home-img20';
  static const homeImg21 = '$_path/home-img21';
  static const homeImg22 = '$_path/home-img22';
  static const img = '$_path/img';
  static const activeInsightIcon = '$_path/insights_a';
  static const inactiveInsightIcon = '$_path/insights_i';
  static const activeLibraryIcon = '$_path/library_a';
  static const inactiveLibraryIcon = '$_path/library_i';
  static const lockIcon = '$_path/img';
  static const ob = '$_path/ob';
  static const ob1 = '$_path/ob1';
  static const ob2 = '$_path/ob2';
  static const activeProfileIcon = '$_path/profile_a';
  static const inactiveProfileIcon = '$_path/profile_i';
  static const savedLater1 = '$_path/s-later1';
  static const savedLater2 = '$_path/s-later2';
  static const storyPreview = '$_path/story-preview';
  static const user1 = '$_path/user1';
  static const user2 = '$_path/user2';
  static const user3 = '$_path/user3';
  static const user4 = '$_path/user4';
  static const user5 = '$_path/user5';
  static const vidImg = '$_path/vid-img';
  static const activeWalletIcon = '$_path/wallet_a';
  static const inactiveWalletIcon = '$_path/wallet_i';
  static const writeIcon = '$_path/write_i';
}

extension ImageExt on String {
  String get img {
    if (toLowerCase().endsWith('.svg') ||
        toLowerCase().endsWith('.png') ||
        toLowerCase().endsWith('.jpg') ||
        toLowerCase().endsWith('.jpeg')) {
      return this;
    }

    return this;
  }

  String get svg => endsWith('.svg') ? this : '$this.svg';
  String get png => endsWith('.png') ? this : '$this.png';
  String get jpg => endsWith('.jpg') ? this : '$this.jpg';
}
