enum MaterialDuration {
  short1(Duration(milliseconds: 50)),
  short2(Duration(milliseconds: 100)),
  short3(Duration(milliseconds: 150)),
  short4(Duration(milliseconds: 200)),
  medium1(Duration(milliseconds: 250)),
  medium2(Duration(milliseconds: 300)),
  medium3(Duration(milliseconds: 350)),
  medium4(Duration(milliseconds: 400)),
  long1(Duration(milliseconds: 450)),
  long2(Duration(milliseconds: 500)),
  long3(Duration(milliseconds: 550)),
  long4(Duration(milliseconds: 600)),
  extraLong1(Duration(milliseconds: 700)),
  extraLong2(Duration(milliseconds: 800)),
  extraLong3(Duration(milliseconds: 900)),
  extraLong4(Duration(milliseconds: 1000)),
  max(Duration(milliseconds: 1250));

  final Duration value;
  const MaterialDuration(this.value);
}

extension DurationDivision on Duration {
  double operator / (Duration other) =>
      inMicroseconds / other.inMicroseconds;
}
