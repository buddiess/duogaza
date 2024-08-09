enum Position {
  top('탑 라이너'),
  jgl('정글러'),
  mid('미드 라이너'),
  bot('바텀 라이너'),
  spt('서포터');

  const Position(this.value);
  final String value;

  factory Position.fromString(String value) {
    return values.firstWhere((element) => element.value == value);
  }
}
