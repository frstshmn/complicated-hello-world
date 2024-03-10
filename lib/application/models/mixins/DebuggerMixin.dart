mixin DebuggerMixin {
  void debug(Map columns) {
    print("---- Debugger ----");
    columns.forEach((k, v) => print("$k: $v"));
  }
}