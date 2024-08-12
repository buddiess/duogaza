enum QueType {
  solo('솔로랭크'),
  free('자유랭크'),
  aram('칼바람 나락'), //올랜덤올미드
  quick('빠른대전');

  const QueType(this.value);
  final String value;

  factory QueType.fromString(String value) {
    return values.firstWhere((element) => element.value == value);
  }
}
