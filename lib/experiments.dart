class Experimants {
  bool isMatching(Object object) {
    switch (object) {
      case ['a']:
        return true;
      default:
        return false;
    }
  }

  bool validate(int number) {
    return switch (number) {
      0 => true,
      >= 1 && < 20 => true,
      _ => false,
    };
  }
}
