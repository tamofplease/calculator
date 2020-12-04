class CalcView {
  const CalcView(this.type);
  final ViewType type;
}

enum ViewType {
  Answer,
  Calc,
  Both,
}