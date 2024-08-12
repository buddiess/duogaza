enum Tier {
  iron('아이언'),
  bronze('브론즈'),
  silver('실버'),
  gold('골드'),
  platinum('플래티넘'),
  emerald('에메랄드'),
  diamond('다이아몬드'),
  master('마스터'),
  grandmaster('그랜드 마스터'),
  challenger('챌린저');

  const Tier(this.value);
  final String value;

  factory Tier.fromString(String value) {
    return values.firstWhere((element) => element.value == value);
  }
}
