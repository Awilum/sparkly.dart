library sparkly;

import 'dart:math';

String sparkly(List<int> data) {
  List<dynamic> sparkTicks = ['▁', '▂', '▃', '▄', '▅', '▆', '▇', '█'];
  String result = '';
  int minValue = data.reduce(min);
  int maxValue = data.reduce(max);

  // Use a high tick if data is constant and max is not equal to 0.
  if (minValue == maxValue && maxValue != 0) sparkTicks = sparkTicks[4];

  data.forEach((number) {
    int tickIndex = ((number / maxValue) * sparkTicks.length).ceil() - 1;
    if (maxValue == 0 || tickIndex < 0) tickIndex = 0;
    result += sparkTicks[tickIndex];
  });

  return result;
}
