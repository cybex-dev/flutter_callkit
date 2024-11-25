enum CallKitAction {
  none,
  answer,
  hangUp,
  dismiss,
  callback,
  decline;

  static CallKitAction fromString(String action) {
    return values.firstWhere((element) => element.name == action, orElse: () => none);
  }
}