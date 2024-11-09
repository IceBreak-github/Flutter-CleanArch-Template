// 4 Point Grid System  (Default)
// All app sizes and paddings are divisible by 4, ensuring design consistency through out the app
class AppSizes {
  static const _point = 4;
  static const row = _point * 2;            // 8
  static const pagePadding = row * 2;       // 16
  static const widgetPadding = row * 3;     // 24
  // Add your global paddings and sizes here

  static int custom(int value) {
    if(value % row == 0) {
      return value;
    }
    throw Exception('Custom AppSizes value not divisible by point size: $_point');
  }
}

// Generated type scaling, Major Second (Default)
class FontSizes {
  static const double bigHeading = 19.22;
  static const double heading = 17.09;
  static const double medium = 15.19; 
  static const double body = 13.5;
  static const double small = 12;
  static const double smallest = 10.67;
}