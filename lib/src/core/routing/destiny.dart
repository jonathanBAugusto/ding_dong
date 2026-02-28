enum Destiny {
  home;

  String get path {
    switch (this) {
      case Destiny.home:
        return '/';
    }
  }
}
