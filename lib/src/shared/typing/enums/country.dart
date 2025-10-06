enum Country {
  egypt,
  greece,
  unitedStates,
  arabEmirates,
  australia,
  other;

  static Country fromString(String value) => switch (value) {
    'eg' => egypt,
    'gr' => greece,
    'usa' => unitedStates,
    'ae' => arabEmirates,
    'au' => australia,
    _ => other,
  };
}
